//
// LCD_Bmp_Keypad: use 3x3 keypad to move bitmap on LCD
//
#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "LCD.h"
#include "Scankey.h"

unsigned char background_128x64[128*8] = {
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0xFF,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0xFF,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0xFF,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0xFF,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};

unsigned char O_16x16[32] = {
	0xE0,0x10,0x0C,0x04,0x02,0x01,0x01,0x01,0x01,0x01,0x01,0x02,0x04,0x0C,0x10,0xE0,
	0x07,0x08,0x30,0x20,0x40,0x80,0x80,0x80,0x80,0x80,0x80,0x40,0x20,0x30,0x08,0x07
};

unsigned char X_16x16[32] = {
	0x00,0x02,0x04,0x08,0x10,0x20,0x40,0x80,0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x00,
	0x00,0x40,0x20,0x10,0x08,0x04,0x02,0x01,0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x00
};

int main(void)
{
	int8_t keyin = 0 , FLAG = 0;
	int N1 = 0 ,N2 = 0 ,N3 = 0 ;
	int N4 = 0 ,N5 = 0 ,N6 = 0 ;
	int N7 = 0 ,N8 = 0 ,N9 = 0 ;
	int WHO = 0 ; // 0:O  1:X
	
	int x1 = 13, x2 = 55 , x3 = 97;
	int y1 = 0, y2 = 24, y3 = 48;

	SYS_Init();
	init_LCD();
	clear_LCD();
	OpenKeyPad();
	
	draw_LCD(background_128x64);
	
	while(keyin==0) keyin=ScanKey(); // wait till key is pressed

	while(1) {
	
    keyin = ScanKey(); // Scan 3x3 keypad
		
		if (keyin != 0 && FLAG == 0){
			
			switch(keyin){   
				case 1:	
					if (N1 == 0 && WHO == 0){
						draw_Bmp16x16( x1 , y1 , FG_COLOR , BG_COLOR , O_16x16);
						N1 = 1;
						WHO = 1;
					}
					else if (N1 == 0 && WHO == 1){
						draw_Bmp16x16( x1 , y1 , FG_COLOR , BG_COLOR , X_16x16);
						N1 = 2;
						WHO = 0;
					}
					break;
				case 2: 
					if (N2 == 0 && WHO == 0){
						draw_Bmp16x16( x2 , y1 , FG_COLOR , BG_COLOR , O_16x16);
						N2 = 1;
						WHO = 1;
					}
					else if (N2 == 0 && WHO == 1){
						draw_Bmp16x16( x2 , y1 , FG_COLOR , BG_COLOR , X_16x16);
						N2 = 2;
						WHO = 0;
					}
					break;
				case 3:
					if (N3 == 0 && WHO == 0){
						draw_Bmp16x16( x3 , y1 , FG_COLOR , BG_COLOR , O_16x16);
						N3 = 1;
						WHO = 1;
					}
					else if (N3 == 0 && WHO == 1){
						draw_Bmp16x16( x3 , y1 , FG_COLOR , BG_COLOR , X_16x16);
						N3 = 2;
						WHO = 0;
					}
					break;
				case 4:	
					if (N4 == 0 && WHO == 0){
						draw_Bmp16x16( x1 , y2 , FG_COLOR , BG_COLOR , O_16x16);
						N4 = 1;
						WHO = 1;
					}
					else if (N4 == 0 && WHO == 1){
						draw_Bmp16x16( x1 , y2 , FG_COLOR , BG_COLOR , X_16x16);
						N4 = 2;
						WHO = 0;
					}
					break;
				case 5:
					if (N5 == 0 && WHO == 0){
						draw_Bmp16x16( x2 , y2 , FG_COLOR , BG_COLOR , O_16x16);
						N5 = 1;
						WHO = 1;
					}
					else if (N5 == 0 && WHO == 1){
						draw_Bmp16x16( x2 , y2 , FG_COLOR , BG_COLOR , X_16x16);
						N5 = 2;
						WHO = 0;
					}
					break;
				case 6: 
					if (N6 == 0 && WHO == 0){
						draw_Bmp16x16( x3 , y2 , FG_COLOR , BG_COLOR , O_16x16);
						N6 = 1;
						WHO = 1;
					}
					else if (N6 == 0 && WHO == 1){
						draw_Bmp16x16( x3 , y2 , FG_COLOR , BG_COLOR , X_16x16);
						N6 = 2;
						WHO = 0;
					}
					break;
				case 7:
					if (N7 == 0 && WHO == 0){
						draw_Bmp16x16( x1 , y3 , FG_COLOR , BG_COLOR , O_16x16);
						N7 = 1;
						WHO = 1;
					}
					else if (N7 == 0 && WHO == 1){
						draw_Bmp16x16( x1 , y3 , FG_COLOR , BG_COLOR , X_16x16);
						N7 = 2;
						WHO = 0;
					}
					break;
				case 8:
					if (N8 == 0 && WHO == 0){
						draw_Bmp16x16( x2 , y3 , FG_COLOR , BG_COLOR , O_16x16);
						N8 = 1;
						WHO = 1;
					}
					else if (N8 == 0 && WHO == 1){
						draw_Bmp16x16( x2 , y3 , FG_COLOR , BG_COLOR , X_16x16);
						N8 = 2;
						WHO = 0;
					}
					break;
				case 9:
					if (N9 == 0 && WHO == 0){
						draw_Bmp16x16( x3 , y3 , FG_COLOR , BG_COLOR , O_16x16);
						N9 = 1;
						WHO = 1;
					}
					else if (N9 == 0 && WHO == 1){
						draw_Bmp16x16( x3 , y3 , FG_COLOR , BG_COLOR , X_16x16);
						N9 = 2;
						WHO = 0;
					}
					break;			
				default: break;
			}
			
			if ((N1 == 1 && N2 == 1 && N3 == 1) || (N4 == 1 && N5 == 1 && N6 == 1) || (N7 == 1 && N8 == 1 && N9 == 1) || (N1 == 1 && N4 == 1 && N7 == 1) || (N2 == 1 && N5 == 1 && N8 == 1) || (N3 == 1 && N6 == 1 && N9 == 1) || (N1 == 1 && N5 == 1 && N9 == 1) || (N3 == 1 && N5 == 1 && N7 == 1)){
				clear_LCD();
				print_Line(0 , "Circle Win");
			}
			else if ((N1 == 2 && N2 == 2 && N3 == 2) || (N4 == 2 && N5 == 2 && N6 == 2) || (N7 == 2 && N8 == 2 && N9 == 2) || (N1 == 2 && N4 == 2 && N7 == 2) || (N2 == 2 && N5 == 2 && N8 == 2) || (N3 == 2 && N6 == 2 && N9 == 2) || (N1 == 2 && N5 == 2 && N9 == 2) || (N3 == 2 && N5 == 2 && N7 == 2)){
				clear_LCD();
				print_Line(0 , "Cross Win");
			}
			else if (N1 != 0 && N2 != 0 && N3 != 0 && N4 != 0 && N5 != 0 && N6 != 0 && N7 != 0 && N8 != 0 && N9 != 0){
				clear_LCD();
				print_Line(0 , "Tie");
			}
			FLAG = 1;
		}
		else if (keyin == 0) FLAG = 0;
	}
}
