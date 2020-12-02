#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Seven_Segment.h"
#include "Scankey.h"


volatile uint8_t KEY_Flag;

volatile uint8_t int_cnt;

volatile uint32_t index_5ms, cnt_5ms, cnt_1s, cnt_100ms, count;
volatile uint32_t digit0, digit1, digit2, digit3;

int fun = 0;// 0 = input num 1; 1 = input num 2  

int operat = 0; // 1 = + ; 2 = -; 3 = *; 4 = /

char cal;

int num1,num2,sum,flag;

char L1[16] ="                ";
char L2[16] ="                ";
char L3[16] ="                ";
char L4[16] ="                ";
char sleep[16] ="                ";
	
void TMR0_IRQHandler(void)
{
    cnt_5ms++;
    index_5ms = cnt_5ms % 4;

    if (index_5ms == 0) {
        PA0=1; PA1=1; PA2=1; PA3=1; PA4=1; PA5=0;					
        CloseSevenSegment();
        ShowSevenSegment(0,digit0);				
    }	
    if (index_5ms == 1)  {
        PA0=1; PA1=1; PA2=1; PA3=1; PA4=0; PA5=1;
        CloseSevenSegment();
        ShowSevenSegment(1,digit1);		
    }	
    if (index_5ms == 2)  {
        PA0=1; PA1=1; PA2=1; PA3=0; PA4=1; PA5=1;
        CloseSevenSegment();
        ShowSevenSegment(2,digit2);		
    }
    if (index_5ms == 3)  {
        PA0=1; PA1=1; PA2=1; PA3=1; PA4=1; PA5=1;
        CloseSevenSegment();
        ShowSevenSegment(3,digit3);
    }
    if (cnt_5ms % 20 == 0) {
        cnt_100ms++;
    }
    if (cnt_5ms %70 == 0) {
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
    if (PA->ISRC & BIT1) { 				// check if PA1 interrupt occurred
        PA->ISRC |= BIT1;         // clear PA1 interrupt status  
        if (PA3==0) { KEY_Flag =2; PA3=1;}
        if (PA4==0) { KEY_Flag =5; PA4=1;}
        if (PA5==0) { KEY_Flag =8; PA5=1;}
        return;				
    } 
    if (PA->ISRC & BIT2) { 				// check if PA2 interrupt occurred
        PA->ISRC |= BIT2;         // clear PA2 interrupt status  
        if (PA3==0) { KEY_Flag =1; PA3=1;}
        if (PA4==0) { KEY_Flag =4; PA4=1;}
        if (PA5==0) { KEY_Flag =7; PA5=1;}
        return;				
    }                     				// else it is unexpected interrupts
    PA->ISRC = PA->ISRC;	      	// clear all GPB pins
}

void Init_WDT(void)
{
    // WDT timeout every 2^14 WDT clock, disable system reset, disable wake up system
    SYS_UnlockReg();
    WDT_Open(WDT_TIMEOUT_2POW16, 0, FALSE, FALSE);
    WDT_EnableInt();          // Enable WDT timeout interrupt
    NVIC_EnableIRQ(WDT_IRQn); // Enable Cortex-M0 NVIC WDT interrupt vector
    SYS_LockReg();
}

void WDT_IRQHandler(void)
{ 
    flag=1;
    WDT_CLEAR_TIMEOUT_INT_FLAG(); // Clear WDT interrupt flag
}

void feeddog(void){
    SYS_UnlockReg();
    WDT_RESET_COUNTER();
    SYS_LockReg();
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

void EINT1_IRQHandler(void)
{
    num1 = 0;
    num2 = 0;
    sum = 0;
    fun = 0;
    cal = ' ';
    sprintf(L1,"                ");
    sprintf(L2,"                ");
    sprintf(L3,"                ");
    sprintf(L4,"                ");
    clear_LCD();

    GPIO_CLR_INT_FLAG(PB, BIT15);  // Clear GPIO interrupt flag
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

void SLEEP(int flag){
    if(flag == 1){
        clear_LCD();
        sprintf(sleep,"SLEEP!");
        while(1){
            print_Line(1,sleep);
            PC12=0;
            if(KEY_Flag!=0){
                feeddog();
                break;
            }
        }
        PC12=1;
        clear_LCD();
    }
}
	
int32_t main()
{	
    SYS_Init();	
    Init_KEY();
    Init_Timer0();
    OpenSevenSegment();
    OpenKeyPad();
    Init_WDT();
    init_LCD();
    Init_EXTINT();
    clear_LCD();
    index_5ms=cnt_5ms=cnt_1s=cnt_100ms=count=int_cnt = 0;

    digit3 = KEY_Flag = 0;
    num1=num2=sum=0;
    while(1) {
        SLEEP(flag);
        if (KEY_Flag !=0) {
            count++;
            digit3 = KEY_Flag;
            feeddog();
            KEY_Flag = 0;
            flag=0;
        }
        digit2 = int_cnt%10;
        digit1 = (count %100) / 10;
        digit0 = count %10;

        sprintf(L1,"%d",num1);
        sprintf(L2,"%c",cal);
        sprintf(L3,"%d",num2);
        sprintf(L4,"%d",sum);
        print_Line(0,L1);
        print_Line(1,L2);
        print_Line(2,L3);
        print_Line(3,L4);

        if(KEY_Flag==1&&fun==0){
            num1 = num1*10+1;
        }else if(KEY_Flag==1&&fun==1){
            num2 = num2*10+1;
        }
        if(KEY_Flag==2&&fun==0){
            num1 = num1*10+2;
        }else if(KEY_Flag==2&&fun==1){
            num2 = num2*10+2;
        }
        if(KEY_Flag==4&&fun==0){
            num1 = num1*10+3;
        }else if(KEY_Flag==4&&fun==1){
            num2 = num2*10+3;
        }
        if(KEY_Flag==5&&fun==0){
            num1 = num1*10+4;
        }else if(KEY_Flag==5&&fun==1){
            num2 = num2*10+4;
        }
        if(KEY_Flag==3&&fun<1){
            fun=1;
            cal = '+';
        }else if(KEY_Flag==6&&fun<1){
            fun=1;
            cal = '-';
        }else if(KEY_Flag==9&&fun<1){
            fun=1;
            cal = '*';
        }else if(KEY_Flag==8&&fun<1){
            fun=1;
            cal = '/';
        }
			
        if(KEY_Flag==7){
            fun++;
            switch(cal){
                case '+': sum = num1+num2; break;
                case '-': sum = num1-num2; break;
                case '*': sum = num1*num2; break;
                case '/': sum = num1/num2; break;
            }
        }
    }
}