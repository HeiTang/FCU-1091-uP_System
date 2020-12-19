//
// GPIO_7seg_keypad : 3x3 keypad inpt and display on 7-segment LEDs
//
#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Seven_Segment.h"
#include "Scankey.h"

// display an integer on four 7-segment LEDs
void Display_7seg(uint16_t value, uint16_t close)
{
	uint8_t digit;
	digit = value / 1000;
	CloseSevenSegment();
	ShowSevenSegment(3, digit, close);
	CLK_SysTickDelay(5000);

	value = value - digit * 1000;
	digit = value / 100;
	CloseSevenSegment();
	ShowSevenSegment(2, digit, close);
	CLK_SysTickDelay(5000);

	value = value - digit * 100;
	digit = value / 10;
	CloseSevenSegment();
	ShowSevenSegment(1, digit, close);
	CLK_SysTickDelay(5000);

	value = value - digit * 10;
	digit = value;
	CloseSevenSegment();
	ShowSevenSegment(0, digit, close);
	CLK_SysTickDelay(5000);
}

int main(void){
	int i = 0, k = 0, sum = 0,flag = 0;
	uint16_t close = 1;

	SYS_Init();
	OpenSevenSegment();
	OpenKeyPad();

	while (1){
		
		k = ScanKey();

		if (k != 0 && flag == 0){
			close = 0;
			
			if (k == 7){
				int cur = 0;
				cur = sum / 1000;
				sum = sum % 1000;
				sum = sum * 10 + cur;
			}

			else if (k == 8){
				close = 1;
				sum = 0;
			}

			else if (k == 9){
				int a = 0;
				if (sum % 10 != 0){
					a = sum % 10;
					sum = sum - a;
					sum = sum / 10 + a * 1000;
				}
				else{
					sum = sum / 10;
				}
			}
			else{
				sum = sum * 10 + k;
				sum = sum % 10000;
			}
			flag = 1;
		}
		else if (k == 0){
			flag = 0;
		}
		Display_7seg(sum, close);
	}
}