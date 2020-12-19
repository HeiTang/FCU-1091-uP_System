#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Note_Freq.h"
#include "LCD.h"

#define  P125ms 125000
#define  P250ms 250000
#define  P500ms 500000
#define  P1S   1000000

volatile uint8_t u8ADF;
volatile uint32_t u32ADCvalue;
int times;

int Show_ADCvalue()
{
	char T1[16] = "                ";
	u32ADCvalue = ADC_GET_CONVERSION_DATA(ADC, 7);
	sprintf(T1,"DATA = %d",u32ADCvalue);
	clear_LCD();
	print_Line(0,T1);
	return u32ADCvalue;
}

void Buzz(uint32_t number, uint32_t vel)
{
	int i;
	times = (956 - vel) / 4;
	for (i = 0; i < number + times; i++){
		PB11 = 0;              // PB11 = 0 to turn on Buzzer
		CLK_SysTickDelay(vel); // Delay
		PB11 = 1;              // PB11 = 1 to turn off Buzzer
		CLK_SysTickDelay(vel); // Delay
	}
}

void ADC_IRQHandler(void)
{
	uint32_t u32Flag;
	// Get ADC conversion finish interrupt flag
	u32Flag = ADC_GET_INT_FLAG(ADC, ADC_ADF_INT);
	if(u32Flag & ADC_ADF_INT){ 
		u8ADF = 1;
	}
	ADC_CLR_INT_FLAG(ADC, u32Flag);
}

void Init_ADC(void)
{
	ADC_Open(ADC, ADC_INPUT_MODE, ADC_OPERATION_MODE, ADC_CHANNEL_MASK); // set ADC modes & channels
	ADC_POWER_ON(ADC);                          // Power on ADC
	ADC_EnableInt(ADC, ADC_ADF_INT);            // Enable ADC ADC_IF interrupt
	NVIC_EnableIRQ(ADC_IRQn);	                  // Enable CPU NVIC
}

int32_t main (void)
{
  uint8_t i;
  
  uint16_t music[72] = {
	E6 ,D6u,E6 ,D6u,E6 ,B5 ,D6 ,C6 ,A5 ,A5 , 0 , 0 ,
	C5 ,E5 ,A5 ,B5 ,B5 , 0 ,C5 ,A5 ,B5 ,C6 ,C6 , 0 ,
	E6 ,D6u,E6 ,D6u,E6 ,B5 ,D6 ,C6 ,A5 ,A5 , 0 , 0 ,
	C5 ,E5 ,A5 ,B5 ,B5 , 0 ,E5 ,C6 ,B5 ,A5 ,A5 , 0 ,
	B5 ,C6 ,D6 ,E6 ,E6 , 0 ,G5 ,F6 ,E6 ,D6 ,D6 , 0 ,
	F5 ,E6 ,D6 ,C6 ,C6 , 0 ,E5 ,D6 ,C6 ,B5 ,B5 , 0 };
	
  uint32_t pitch[72] = {
	P250ms, P250ms, P250ms, P250ms,	P250ms, P250ms, P250ms, P250ms,	P250ms, P250ms, P250ms, P250ms,
	P250ms, P250ms, P250ms, P250ms,	P250ms, P250ms, P250ms, P250ms,	P250ms, P250ms, P250ms, P250ms,
	P250ms, P250ms, P250ms, P250ms,	P250ms, P250ms, P250ms, P250ms,	P250ms, P250ms, P250ms, P250ms,
	P500ms, P500ms, P500ms, P500ms,	P500ms, P500ms, P500ms, P500ms,	P500ms, P500ms, P500ms, P500ms,
	P500ms, P500ms, P500ms, P500ms,	P500ms, P500ms, P500ms, P500ms,	P500ms, P500ms, P500ms, P500ms,
	P500ms, P500ms, P500ms, P500ms,	P500ms, P500ms, P500ms, P500ms,	P500ms, P500ms, P500ms, P500ms
	};
		
	uint32_t u32ADCvalue;
	
	SYS_Init();
	Init_ADC();
	init_LCD();
		
	u8ADF = 0;
	PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
	PWM_Start(PWM1, PWM_CH_0_MASK);	
	clear_LCD();
	
	while(1) {
		ADC_START_CONV(ADC);
		while (u8ADF == 0);
		u32ADCvalue = Show_ADCvalue();
		
		ADC_DisableInt(ADC, ADC_ADF_INT);
		
		if (u32ADCvalue > 4000){
			//clear_LCD();
			for (i = 0; i < 72; i++) {
				// LED
				PC12 = 0;
				// LCD
				u32ADCvalue = Show_ADCvalue();
				// Buzzer
				PWM_ConfigOutputChannel(PWM1, PWM_CH0, music[i], 90); // 0 = Buzzer ON
				if (music[i]!=0) PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
				else             PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
				CLK_SysTickDelay(pitch[i]);
				
				if(u32ADCvalue < 4000){
					PC12 = 1;
					PWM_DisableOutput(PWM1, PWM_CH_0_MASK); // 0 = Buzzer ON
					break;
				}
			}
		} 
		
		else if (u32ADCvalue <= 4000 && u32ADCvalue >= 500){
			clear_LCD();
			while(1){
				u32ADCvalue = Show_ADCvalue();
				if(u32ADCvalue > 4000 || u32ADCvalue < 500){
					clear_LCD();
					break;
				}else{
					PWM_ConfigOutputChannel(PWM1, PWM_CH0,u32ADCvalue , 90);
					PWM_EnableOutput(PWM1, PWM_CH_0_MASK);
					CLK_SysTickDelay(P250ms);
					PWM_DisableOutput(PWM1, PWM_CH_0_MASK);
					if(u32ADCvalue < 1000){ clear_LCD(); }
				}
			}
		} 
		
		else if (u32ADCvalue < 100 && u32ADCvalue > 10){ clear_LCD(); }
		else if (u32ADCvalue > 0 && u32ADCvalue < 10){ clear_LCD(); }
	}
}