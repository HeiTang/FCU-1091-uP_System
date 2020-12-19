//
// LCD_keypad : 3x3 keypad input and display on LCD
//
// EVB : Nu-LB-NUC140
// MCU : NUC140VE3CN  (LQPF-100)
#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "LCD.h"
#include "Scankey.h"
#include <stdlib.h>

void Buzz(int number)
{
	int i;
	GPIO_SetMode(PB, BIT11, GPIO_MODE_OUTPUT);
	for( i=0 ; i<number ; i++){
		PB11 = 0;                   // turn on Buzzer
	  CLK_SysTickDelay(100000);	  // Delay 
	  PB11 = 1;                   // turn off Buzzer	
	  CLK_SysTickDelay(100000);	  // Delay 
	}
}

void LED()
{
	int j;
	GPIO_SetMode(PC, BIT12, GPIO_MODE_OUTPUT);
	GPIO_SetMode(PC, BIT13, GPIO_MODE_OUTPUT);
	GPIO_SetMode(PC, BIT14, GPIO_MODE_OUTPUT);
	GPIO_SetMode(PC, BIT15, GPIO_MODE_OUTPUT);
		
	for( j=0 ; j<6 ; j++) {
		PC13 =1; 									  // turn off LED
		PC12 =0; 			            	// turn on LED
		CLK_SysTickDelay(100000);	  // Delay 
		PC12 =1;                    
		PC13 =0;                    
		CLK_SysTickDelay(100000);	 
		PC13 =1;            
		PC14 =0;
		CLK_SysTickDelay(100000);	
		PC14 =1; 
		PC15 =0;
		CLK_SysTickDelay(100000);	 
		PC15 =1;
		PC14 =0; 
		CLK_SysTickDelay(100000);
		PC14 =1; 
		PC13 =0;
		CLK_SysTickDelay(100000);	 
	}
}

void Display_7seg(uint16_t value)
{
	uint8_t digit;
	digit = value / 1000;
	CloseSevenSegment();
	ShowSevenSegment(3, digit);
	CLK_SysTickDelay(5000);

	value = value - digit * 1000;
	digit = value / 100;
	CloseSevenSegment();
	ShowSevenSegment(2, digit);
	CLK_SysTickDelay(5000);

	value = value - digit * 100;
	digit = value / 10;
	CloseSevenSegment();
	ShowSevenSegment(1, digit);
	CLK_SysTickDelay(5000);

	value = value - digit * 10;
	digit = value;
	CloseSevenSegment();
	ShowSevenSegment(0, digit);
	CLK_SysTickDelay(5000);
}

int a;
int main(void)
{
	char Text[16] = "                " , show_sum[5] = "     ";
	int sum = 0 , flag = 0 , count = 0 , key_time = 1 , correct , temp , k , key;

	SYS_Init();
	init_LCD();
	clear_LCD();
	OpenKeyPad();	              // initialize 3x3 keypad
	
	while (1){
		count ++;        // Random Seed
	  k = ScanKey();
        
		if ( k != 0 && flag == 0){
			if (k == 1 || k == 2 || k == 3 || k == 4 || k == 5 || k == 6){
				if(sum < 1000){
					sum = sum * 10 + k ;
					sprintf(show_sum,"%d",sum);
				}
				switch(key_time){
					case 1:
						printS(0,0,show_sum); 
						CLK_SysTickDelay(50000); 
						break;
					case 2:
						printS(0,16,show_sum); 
						CLK_SysTickDelay(50000); 
						break;
					case 3:
						printS(0,32,show_sum); 
						CLK_SysTickDelay(50000); 
						break;
					case 4:
						printS(0,48,show_sum); 
						CLK_SysTickDelay(50000); 
						break;
					default:
						break;
				}
			}
			
			// R
			if (k == 7){  
				while(1){
					correct = 1;
					srand(count);
					key = rand() % 10000;
					temp = key;
					
					while( temp > 0 ){
						if( temp % 10 == 0 || temp % 10 == 7 || temp % 10 == 8 || temp % 10 == 9) correct = 0;
						temp = temp/10;
					}
					if( correct  == 1){
						if( key < 1000 ) continue;
						break;
					}
					else{
						continue;
					}
				}
			}
			
			// C
			if (k == 8){
				key_time = 1;
				sum = 0;
				clear_LCD();
			}
			
			// O
			if (k == 9){
				switch(key_time){
					sprintf(show_sum,"%d",sum); 
					case 1:
						if(sum == 0){          //NULL
							printS(80,0,"NULL");   
						}
						else if(sum == key){   //PASS
							printS(0,0,show_sum); 
							printS(80,0,"PASS"); 
							LED();
						}
						else if(sum != key){		//ERROR
							printS(0,0,show_sum); 
							printS(80,0,"ERROR");
							Buzz(2);
						}
						sum = 0;
						key_time++;
						break;
					case 2:
						if(sum == 0){          //NULL
							printS(80,16,"NULL");   
						}
						else if(sum == key){   //PASS
							printS(0,16,show_sum); 
							printS(80,16,"PASS"); 
							LED();
						}
						else if(sum != key){		//ERROR
							printS(0,16,show_sum); 
							printS(80,16,"ERROR");
							Buzz(2);
						}
						sum = 0;
						key_time++;
						break;
					case 3:
						if(sum == 0){          //NULL
							printS(80,32,"NULL");   
						}
						else if(sum == key){   //PASS
							printS(0,32,show_sum); 
							printS(80,32,"PASS"); 
							LED();
						}
						else if(sum != key){		//ERROR
							printS(0,32,show_sum); 
							printS(80,32,"ERROR");
							Buzz(2);
						}
						sum = 0;
						key_time++;
						break;
					case 4:
						if(sum == 0){          //NULL
							printS(80,48,"NULL");   
						}
						else if(sum == key){   //PASS
							printS(0,48,show_sum); 
							printS(80,48,"PASS"); 
							LED();
						}
						else if(sum != key){		//ERROR
							printS(0,48,show_sum); 
							printS(80,48,"ERROR");
							Buzz(2); // Buzz 2 times
						}
						sum = 0;
						key_time ++;
						break;
					default:
						break;
				}
			}
			flag = 1;
		}
		else if (k == 0){
			flag = 0;
		}
		Display_7seg(key);
	}
}