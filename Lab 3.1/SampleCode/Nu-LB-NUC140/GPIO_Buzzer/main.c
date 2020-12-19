//
// GPIO_Buzzer: GPIO output to drive Buzzer
//
// EVB : Nu-LB-NUC140
// MCU : NUC140VE3CN

// PB11 : NUC140 LQFP100 pin48

#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"

int j,i,times;
void Buzz(int number,uint32_t vel){
	times=(1908-vel)/4;
	for (i=0; i<number+times; i++) {
		PB11=0; 		// PB11 = 0 to turn on Buzzer
		CLK_SysTickDelay(vel);	 // Delay 
	  PB11=1; // PB11 = 1 to turn off Buzzer	
	  CLK_SysTickDelay(vel);	 // Delay 
	}
}

int tone[7]={1908,1706,1515,1433,1276,1136,1012};

int32_t main (void){
	SYS_Init();
	GPIO_SetMode(PB, BIT11, GPIO_MODE_OUTPUT);
		
	for(j=0;j<7;j++){
		CLK_SysTickDelay(10000);	
		Buzz(100,tone[j]);
	}
}