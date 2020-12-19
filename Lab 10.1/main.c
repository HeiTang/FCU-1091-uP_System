//
// UART_TX : UART Transmit a string to USB-UART com port
//                  
// EVB : Nu-LB-NUC140
// MCU : NUC140VE3CN (LQFP100)
// UART: UART0 set at baudrate=115200, databit=8, stopbit=1, paritybit=0, flowcontrol=None
//
// USB-UART Connections
// 3V3   to Vcc
// TXD   to PB0 /UART0-RX
// RXD   to PB1 /UART0-TX
// GND   to Gnd
// +5V   N.C.

#include <stdio.h>
#include <string.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Scankey.h"
#include "Seven_Segment.h"
#include <stdlib.h>
#include "LCD.h"

char Text[16];
char num[4];
volatile uint8_t int_cnt;


uint8_t  comRbuf[256];
volatile uint8_t comRbytes = 0;
volatile uint8_t RX_Flag =0;

void Display_7seg(uint16_t value)
{
    uint8_t digit;
    digit = value / 1000;
		num[0] = digit;
    CloseSevenSegment();
    ShowSevenSegment(3, digit);
    CLK_SysTickDelay(5000);

    value = value - digit * 1000;
    digit = value / 100;
		num[1] = digit;
    CloseSevenSegment();
    ShowSevenSegment(2, digit);
    CLK_SysTickDelay(5000);

    value = value - digit * 100;
    digit = value / 10;
		num[2] = digit;
    CloseSevenSegment();
    ShowSevenSegment(1, digit);
    CLK_SysTickDelay(5000);

    value = value - digit * 10;
    digit = value;
		num[3] = digit;
    CloseSevenSegment();
    ShowSevenSegment(0, digit);
    CLK_SysTickDelay(5000);
}

void UART02_IRQHandler(void)
{
	uint8_t c, i, j, a = 0, b = 0;
	uint32_t u32IntSts = UART0->ISR;
	
	if(u32IntSts & UART_IS_RX_READY(UART0)) // check ISR on & RX is ready
  {
		while (!(UART0->FSR & UART_FSR_RX_EMPTY_Msk)){ // check RX is not empty
			c = UART_READ(UART0); // read UART RX data
			if (c!='\n') {        // check line-end 
				comRbuf[comRbytes] = c;
				comRbytes++;
			} 		
			else {
				for(i=0 ; i<4 ; i++){
					for(j=0 ; j<4 ; j++){
						if(i == j && comRbuf[i] == num[j]) a++;
						if(i != j && comRbuf[i] == num[j]) b++;
					}
				}	
				sprintf(Text,"%d%d%d%d    %dA%dB",comRbuf[0],comRbuf[1],comRbuf[2],comRbuf[3],a,b);
				comRbytes=0;
				RX_Flag=1;	                 // set flag when BT command input
				break;
			}
		}		
	}
}
	
void Init_UART(void)
{
	UART_Open(UART0,115200);
  UART_ENABLE_INT(UART0, UART_IER_RDA_IEN_Msk); // enable UART0 interrupt (triggerred by Read-Data-Available)
  NVIC_EnableIRQ(UART02_IRQn);		              // enable Cortex-M0 NVIC interrupt for UART02
}

void SerialPrint(char *Text)
{
	uint8_t key;
	key = ScanKey();
	print_Line(2, key);
	key = key + 0x30; 
	UART_WRITE(UART0, key);
	UART_WRITE(UART0, '\n');
}

int32_t main()
{
	int number = 1234;
	uint8_t key;
  SYS_Init();	
	init_LCD();   // initialize LCD
	Init_UART(); // initialize UART1 for Bluetooth
	OpenKeyPad();
	OpenSevenSegment();
  clear_LCD();  // clear LCD screen	

  while(1) {
		Display_7seg(number);
		if (RX_Flag == 1) {
			print_Line(2, Text);
			RX_Flag=0;
		}
	  SerialPrint(Text);
    CLK_SysTickDelay(1000);
  }
}
