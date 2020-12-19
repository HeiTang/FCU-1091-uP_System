#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"

volatile uint8_t KEY_Flag, int_cnt , FLAG;
volatile uint32_t index_5ms, cnt_5ms, cnt_1s, cnt_100ms;
volatile uint32_t digit0, digit1, digit2, digit3;

// IRQHandler
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
        ShowSevenSegment(0, digit0);
    }
    if (index_5ms == 1) {
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 1; PA4 = 0; PA5 = 1;
        CloseSevenSegment();
        ShowSevenSegment(1, digit1);
    }
    if (index_5ms == 2) {
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 0; PA4 = 1; PA5 = 1;
        CloseSevenSegment();
        ShowSevenSegment(2, digit2);
    }
    if (index_5ms == 3){
        PA0 = 1; PA1 = 1; PA2 = 1; PA3 = 1; PA4 = 1; PA5 = 1;
        CloseSevenSegment();
        ShowSevenSegment(3, digit3);
    }

    if (cnt_5ms % 20 == 0){
			if (FLAG == 0){ cnt_100ms++; }
    }
    if (cnt_5ms % 100 == 0){
        NVIC_EnableIRQ(GPAB_IRQn);
        //GPIO_EnableInt(PA, 0, GPIO_INT_LOW);
        //GPIO_EnableInt(PA, 1, GPIO_INT_LOW);
        //GPIO_EnableInt(PA, 2, GPIO_INT_LOW);
        int_cnt = 0;
    }
    if (cnt_5ms % 200 == 0){
        cnt_1s++;
    }
    TIMER_ClearIntFlag(TIMER0);
}

// Init //

void Init_KEY(void)
{
    GPIO_SetMode(PA, (BIT0 | BIT1 | BIT2), GPIO_MODE_QUASI);
	  GPIO_SetMode(PA, (BIT3 | BIT4 | BIT5), GPIO_MODE_QUASI);
    GPIO_EnableInt(PA, 0, GPIO_INT_LOW);
    GPIO_EnableInt(PA, 1, GPIO_INT_LOW);
    GPIO_EnableInt(PA, 2, GPIO_INT_LOW);		
    NVIC_EnableIRQ(GPAB_IRQn);
    NVIC_SetPriority(GPAB_IRQn,3); 	
    GPIO_SET_DEBOUNCE_TIME(GPIO_DBCLKSRC_LIRC, GPIO_DBCLKSEL_128);
    GPIO_ENABLE_DEBOUNCE(PA, (BIT0 | BIT1 | BIT2));
}

void Init_Timer0(void)
{
    TIMER_Open(TIMER0, TIMER_PERIODIC_MODE, 200);
    TIMER_EnableInt(TIMER0);
    NVIC_EnableIRQ(TMR0_IRQn);
    TIMER_Start(TIMER0);
}

// Main //

int main(void)
{		
	int Line_Count = 1;
	char T1[16] = "                ";

	// Init
	SYS_Init();
	Init_KEY();
	Init_Timer0();
  init_LCD();
	
	OpenSevenSegment();
  clear_LCD();
	FLAG = 1;

	while(1)
	{
		digit3 = (cnt_100ms / 60) / 10;
		digit2 = (cnt_100ms / 60) % 10;
		digit1 = (cnt_100ms % 60) / 10;
		digit0 = cnt_100ms % 10;
		
		// Start:0 Stop:1
		if (KEY_Flag == 1) {
			if (FLAG == 0) { FLAG = 1; }
			else if (FLAG == 1) { FLAG = 0; }
			KEY_Flag = 0;
		}
		// Record
		if (KEY_Flag == 2) {
			if (Line_Count <= 4){
				sprintf(T1, "%d: %d%d:%d%d", Line_Count, digit3, digit2, digit1, digit0);
				print_Line(Line_Count-1, T1);
				CLK_SysTickDelay(50000);
				Line_Count++;
			}
			KEY_Flag = 0;
		}
		// Clear
		if (KEY_Flag == 3) {
			Line_Count = cnt_100ms = KEY_Flag = 0;
			FLAG = 1;
			clear_LCD();
		}
	}
}