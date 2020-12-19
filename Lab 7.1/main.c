#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Seven_Segment.h"
#include <stdlib.h>
#include "LCD.h"
#include "Scankey.h"
volatile uint32_t count = 0, key;
volatile uint8_t KEY_Flag, FLAG, Random_FLAG, int_cnt;
volatile uint32_t index_5ms, cnt_5ms, cnt_1s, cnt_100ms;
volatile uint32_t digit0, digit1, digit2, digit3;
volatile uint8_t Random_FLAG;

void Show_LCD(char G0[16], char G1[16], char G2[16], char G3[16])
{
    clear_LCD();
    print_Line(0, G0);
    print_Line(1, G1);
    print_Line(2, G2);
    print_Line(3, G3);
    CLK_SysTickDelay(50000);
}

void Calculation(int A, int B)
{
    char T1[16] = "                ", T2[16] = "                ", T3[16] = "                ", T4[16] = "                ";
    char num[2];
    num[0] = A;
    num[1] = B;

    sprintf(T1, "%d + %d = %d", num[0], num[1], num[0] + num[1]);
    sprintf(T2, "%d - %d = %d", num[0], num[1], num[0] - num[1]);
    sprintf(T3, "%d x %d = %d", num[0], num[1], num[0] * num[1]);
    sprintf(T4, "%d / %d = %d", num[0], num[1], num[0] / num[1]);
    Show_LCD(T1, T2, T3, T4);
}

void feeddog(void)
{
    SYS_UnlockReg();
    WDT_RESET_COUNTER();
    SYS_LockReg();
}

// IRQHandler -----------

void GPAB_IRQHandler(void)
{
    NVIC_DisableIRQ(GPAB_IRQn);

    //GPIO_DisableInt(PA, 0);
    //GPIO_DisableInt(PA, 1);
    //GPIO_DisableInt(PA, 2);

    int_cnt = 1;

    if (PA->ISRC & BIT0)
    {                     // check if PA0 interrupt occurred
        PA->ISRC |= BIT0; // clear PA0 interrupt status
        if (PA3 == 0) { KEY_Flag = 3; PA3 = 1; }
        if (PA4 == 0) { KEY_Flag = 6; PA4 = 1; }
        if (PA5 == 0) { KEY_Flag = 9; PA5 = 1; }
        return;
    }
    if (PA->ISRC & BIT1)
    {                     // check if PA1 interrupt occurred
        PA->ISRC |= BIT1; // clear PA1 interrupt status
        if (PA3 == 0) { KEY_Flag = 2; PA3 = 1; }
        if (PA4 == 0) { KEY_Flag = 5; PA4 = 1; }
        if (PA5 == 0) { KEY_Flag = 8; PA5 = 1; }
        return;
    }
    if (PA->ISRC & BIT2)
    {                     // check if PA2 interrupt occurred
        PA->ISRC |= BIT2; // clear PA2 interrupt status
        if (PA3 == 0) { KEY_Flag = 1; PA3 = 1; }
        if (PA4 == 0) { KEY_Flag = 4; PA4 = 1; }
        if (PA5 == 0) { KEY_Flag = 7; PA5 = 1; }
        return;
    }                    // else it is unexpected interrupts
    PA->ISRC = PA->ISRC; // clear all GPB pins
}

void TMR0_IRQHandler(void)
{
    cnt_5ms++;
    index_5ms = cnt_5ms % 4;

    if (index_5ms == 0) {
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 1; PA4 = 1; PA5 = 0;
        CloseSevenSegment();
        ShowSevenSegment(0, key % 10);
    }
    if (index_5ms == 1) {
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 1; PA4 = 0; PA5 = 1;
        CloseSevenSegment();
        ShowSevenSegment(1, (key % 100) / 10);
    }
    if (index_5ms == 2) {
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 0; PA4 = 1; PA5 = 1;
        CloseSevenSegment();
        ShowSevenSegment(2, (key % 1000) / 100);
    }
    if (index_5ms == 3){
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 1; PA4 = 1; PA5 = 1;
        CloseSevenSegment();
        ShowSevenSegment(3, key / 1000);
    }

    if (cnt_5ms % 20 == 0){
        cnt_100ms++;
    }
    if (cnt_5ms % 100 == 0){
        NVIC_EnableIRQ(GPAB_IRQn);
        //GPIO_EnableInt(PA, 0, GPIO_INT_LOW);
        //GPIO_EnableInt(PA, 1, GPIO_INT_LOW);
        //GPIO_EnableInt(PA, 2, GPIO_INT_LOW);
        int_cnt = 0;
    }
    if (cnt_5ms % 200 == 0){
        if (Random_FLAG == 0) {
            srand(cnt_5ms);
            key = (rand() % 9000) + 1000;
        }
        cnt_1s++;
    }
    TIMER_ClearIntFlag(TIMER0);
}

void WDT_IRQHandler(void)
{
    WDT_CLEAR_TIMEOUT_INT_FLAG(); // Clear WDT interrupt flag
}

void EINT1_IRQHandler(void)
{
    while (1)
    {
        PC12 = 0;
        CLK_SysTickDelay(100000);
        PC12 = 1;
        CLK_SysTickDelay(100000);
    }
    GPIO_CLR_INT_FLAG(PB, BIT15); // Clear GPIO interrupt flag
}

// Init() -----------

void Init_KEY(void)
{
    GPIO_SetMode(PA, (BIT0 | BIT1 | BIT2), GPIO_MODE_INPUT);
    //GPIO_SetMode(PA, (BIT3 | BIT4 | BIT5), GPIO_MODE_QUASI);
    GPIO_EnableInt(PA, 0, GPIO_INT_LOW);
    GPIO_EnableInt(PA, 1, GPIO_INT_LOW);
    GPIO_EnableInt(PA, 2, GPIO_INT_LOW);
    NVIC_EnableIRQ(GPAB_IRQn);
    GPIO_SET_DEBOUNCE_TIME(GPIO_DBCLKSRC_LIRC, GPIO_DBCLKSEL_64);
    GPIO_ENABLE_DEBOUNCE(PA, (BIT0 | BIT1 | BIT2));
}

void Init_WDT(void)
{
    // WDT timeout every 2^14 WDT clock, disable system reset, disable wake up system
    SYS_UnlockReg();
    WDT_Open(WDT_TIMEOUT_2POW16, 0, TRUE, TRUE);
    WDT_EnableInt();          // Enable WDT timeout interrupt
    NVIC_EnableIRQ(WDT_IRQn); // Enable Cortex-M0 NVIC WDT interrupt vector
    SYS_LockReg();
}

void Init_Timer0(void)
{
    TIMER_Open(TIMER0, TIMER_PERIODIC_MODE, 200);
    TIMER_EnableInt(TIMER0);
    NVIC_EnableIRQ(TMR0_IRQn);
    TIMER_Start(TIMER0);
}

void Init_EXTINT(void)
{
    // Configure EINT1 pin and enable interrupt by rising and falling edge trigger
    GPIO_SetMode(PB, BIT15, GPIO_MODE_INPUT);
    GPIO_EnableEINT1(PB, 15, GPIO_INT_RISING); // RISING, FALLING, BOTH_EDGE, HIGH, LOW
    NVIC_EnableIRQ(EINT1_IRQn);

    // Enable interrupt de-bounce function and select de-bounce sampling cycle time
    GPIO_SET_DEBOUNCE_TIME(GPIO_DBCLKSRC_LIRC, GPIO_DBCLKSEL_64);
    GPIO_ENABLE_DEBOUNCE(PB, BIT15);
}

// Main -----------
int main(void)
{
    int FLAG = 0, A, B, a;

    SYS_Init();
    Init_WDT();
    Init_EXTINT();  
    Init_KEY();
    Init_Timer0();
    init_LCD();
    OpenSevenSegment();
    OpenKeyPad();
    clear_LCD();

    KEY_Flag = 0, Random_FLAG = 1;
    index_5ms = cnt_5ms = cnt_1s = cnt_100ms = count = int_cnt = 0;

    while (1)
    {
        if (KEY_Flag == 5)
        {
            if (FLAG == 0)
            {
                Random_FLAG = 0;
                clear_LCD();
                PA12 = 1; PA13 = 0; PA14 = 1;
                FLAG = 1;
            }
            else if (FLAG == 1)
            {
                Random_FLAG = 1;
                A = key / 100;
                B = key - A * 100;
                Calculation(A, B);
                PA12 = 1; PA13 = 1; PA14 = 0;
                FLAG = 0;
            }
            KEY_Flag = 0;
        }
        feeddog();
    }
}

// Random_FLAG:
// 0 : Random start
// 1 : Random stop