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
#include "LCD.h"
#include "Seven_Segment.h"
#include "scankey.h"

char Text[128];

uint8_t comRbuf[256];
volatile uint8_t comRbytes = 0;
volatile uint8_t RX_Flag = 0;
char key[4] = "8723";
int input;
int flag;
int a = 0, b = 0;
int Line = 0;
int digit = 0;
int digit_temp;
int clear = 0;
volatile uint8_t int_cnt;

volatile uint32_t index_5ms, cnt_5ms, cnt_1s, cnt_100ms, count;
volatile uint32_t digit0, digit1, digit2, digit3;

void TMR0_IRQHandler(void)
{
	cnt_5ms++;
	index_5ms = cnt_5ms % 4;
	if (index_5ms == 0)
	{
		CloseSevenSegment();
		ShowSevenSegment(0, 3);
	}
	if (index_5ms == 1)
	{
		CloseSevenSegment();
		ShowSevenSegment(1, 2);
	}
	if (index_5ms == 2)
	{
		CloseSevenSegment();
		ShowSevenSegment(2, 7);
	}
	if (index_5ms == 3)
	{
		CloseSevenSegment();
		ShowSevenSegment(3, 8);
	}

	if (cnt_5ms % 20 == 0)
	{
		cnt_100ms++;
	}

	if (cnt_5ms % 100 == 0)
	{
		//NVIC_EnableIRQ(GPAB_IRQn);
		//GPIO_EnableInt(PA, 0, GPIO_INT_LOW);
		//GPIO_EnableInt(PA, 1, GPIO_INT_LOW);
		//GPIO_EnableInt(PA, 2, GPIO_INT_LOW);
		int_cnt = 0;
	}

	if (cnt_5ms % 200 == 0)
	{
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

void Compare(char guess[])
{
	int i, j;
	char result[6];
	a = 0, b = 0;
	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 4; j++)
		{
			if (i == j && key[i] == guess[j])
			{
				a++;
			}
			else if (i != j && key[i] == guess[j])
			{
				b++;
			}
		}
	}
	sprintf(result, "%dA%dB", a, b);
	printS(80, 16 * Line, result);
}

void UART02_IRQHandler(void)
{
	uint8_t in_char;
	char guess[5] = "     ";
	uint8_t c, i;
	uint32_t u32IntSts = UART0->ISR;
	//print_Line(0, "UART0-RX");
	if (u32IntSts & UART_IS_RX_READY(UART0)) // check ISR on & RX is ready
	{
		while (!(UART0->FSR & UART_FSR_RX_EMPTY_Msk))
		{						  // check RX is not empty
			c = UART_READ(UART0); // read UART RX data
			if (c != '\n')
			{ // check line-end
				comRbuf[comRbytes] = c;
				comRbytes++;
			}
			else
			{
				for (i = 0; i < comRbytes; i++)
					Text[i] = comRbuf[i]; // store received data to Message
				for (i = comRbytes; i < 16; i++)
					Text[i] = ' ';
				comRbytes = 0;
				clear = 1; // set flag when BT command input
				break;
			}
		}
		for (i = 0; i < 4; i++)
		{
			guess[i] = Text[i];
		}
		if (Line < 4 && clear == 1)
		{
			print_Line(Line, guess);
			Compare(guess);
			Line++;
			clear = 0;
			//UART_ClearIntFlag(UART0 ,1);
		}
	}
}

void Init_UART(void)
{
	UART_Open(UART0, 115200);
	UART_ENABLE_INT(UART0, UART_IER_RDA_IEN_Msk);
	NVIC_EnableIRQ(UART02_IRQn);
}

void SerialPrint(char *Text)
{
	UART_Write(UART0, Text, 5);
}

int32_t main()
{
	int num = 0;
	char DB[4];
	SYS_Init();
	Init_UART();
	init_LCD();
	Init_Timer0();
	clear_LCD();
	OpenKeyPad();
	OpenSevenSegment();

	while (1)
	{
		input = ScanKey();
		if (input != 0 && flag == 0)
		{
			if (digit < 4)
			{
				num = num * 10 + input;
				digit++;
			}
			flag = 1;
		}
		else if (input == 0)
		{
			flag = 0;
		}
		if (digit == 4)
		{
			sprintf(Text, "%d\n", num);
			SerialPrint(Text);
			CLK_SysTickDelay(1000);
			digit = 0;
			num = 0;
		}
		CLK_SysTickDelay(5000);
	}
}