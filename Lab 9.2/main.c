//
// GPIO_IRQ : GPIO interrupt triggered by buttons
//
// EVB : Nu-LB-NUC140
// MCU : NUC140VE3CN

// wire PB12,13,14 to Ground will trigger interrupt
// KEY1 connected to PB12 
// KEY2 connected to PB13 
// KEY3 connected to PB14 

#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Scankey.h"
#include "Note_Freq.h"
#include "LCD.h"

#define  P125ms 125000
#define  P250ms 250000
#define  P500ms 500000
#define  P1S   1000000

volatile uint8_t KEY_Flag, int_cnt;
volatile uint32_t index_5ms, cnt_5ms, cnt_1s, cnt_100ms;

char T1[16] = "                ";
int times, flag = 0;

void TMR0_IRQHandler(void)
{
    cnt_5ms++;
    index_5ms = cnt_5ms % 4;

    if (index_5ms == 0) { PA0=1; PA1=1; PA2=1; PA3=1; PA4=1; PA5=0; }	
    if (index_5ms == 1) { PA0=1; PA1=1; PA2=1; PA3=1; PA4=0; PA5=1; }	
    if (index_5ms == 2) { PA0=1; PA1=1; PA2=1; PA3=0; PA4=1; PA5=1; }
    if (index_5ms == 3) { PA0=1; PA1=1; PA2=1; PA3=1; PA4=1; PA5=1; }		
    if (cnt_5ms % 20 == 0) {
        cnt_100ms++; 
    }
    if (cnt_5ms %100 == 0)
	{
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

void Init_Timer0(void)
{
    TIMER_Open(TIMER0, TIMER_PERIODIC_MODE, 200);
    TIMER_EnableInt(TIMER0);
    NVIC_EnableIRQ(TMR0_IRQn);
    TIMER_Start(TIMER0);
}

void GPAB_IRQHandler(void)
{
    NVIC_DisableIRQ(GPAB_IRQn);

    //GPIO_DisableInt(PA, 0);
    //GPIO_DisableInt(PA, 1);
    //GPIO_DisableInt(PA, 2);

    int_cnt=1;
	
    if (PA->ISRC & BIT0) {        // check if PA0 interrupt occurred
        PA->ISRC |= BIT0;         // clear PA0 interrupt status
        if (PA3==0) { KEY_Flag =3; PA3=1;}
        if (PA4==0) { KEY_Flag =6; PA4=1;}
        if (PA5==0) { KEY_Flag =9; PA5=1;}
        return;			
    } 
    if (PA->ISRC & BIT1) {        // check if PA1 interrupt occurred
        PA->ISRC |= BIT1;         // clear PA1 interrupt status  
        if (PA3==0) { KEY_Flag =2; PA3=1;}
        if (PA4==0) { KEY_Flag =5; PA4=1;}
        if (PA5==0) { KEY_Flag =8; PA5=1;}
        return;				
    } 
    if (PA->ISRC & BIT2) {        // check if PA2 interrupt occurred
        PA->ISRC |= BIT2;         // clear PA2 interrupt status  
        if (PA3==0) { KEY_Flag =1; PA3=1;}
        if (PA4==0) { KEY_Flag =4; PA4=1;}
        if (PA5==0) { KEY_Flag =7; PA5=1;}
        return;				
    }                             // else it is unexpected interrupts
    PA->ISRC = PA->ISRC;          // clear all GPB pins
}

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

int32_t main()
{	
    SYS_Init();	
    Init_KEY();
    Init_Timer0();
    init_LCD();
    OpenKeyPad();
	clear_LCD();
    
    PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
    PWM_Start(PWM1, PWM_CH_0_MASK);	
    
    index_5ms = cnt_5ms = cnt_1s = cnt_100ms = int_cnt = KEY_Flag = 0;
    
    
    while(1) {
        if (KEY_Flag != 0){
            KEY_Flag = 0;
        }
        if(KEY_Flag == 1){
            sprintf(T1,"Music = C4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,C4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag == 2){
            sprintf(T1,"Music = D4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,D4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==3){
            sprintf(T1,"Music = E4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,E4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==4){
            sprintf(T1,"Music = F4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,F4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==5){
            sprintf(T1,"Music = G4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,G4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==6){
            sprintf(T1,"Music = A4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,A4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==7){
            sprintf(T1,"Music = B4");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,B4, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==8){
            sprintf(T1,"Music = C5");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,C5, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }else if(KEY_Flag==9){
            sprintf(T1,"Music = D5");
            print_Line(0,T1);
            PWM_ConfigOutputChannel(PWM1, PWM_CH0,D5, 90);
            PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
            CLK_SysTickDelay(P250ms);
            PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
        }		
    }
}