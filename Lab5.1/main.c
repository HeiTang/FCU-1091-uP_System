//
// LCD_Bmp_Keypad: use 3x3 keypad to move bitmap on LCD
//
#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "LCD.h"
#include "Scankey.h"

//unsigned char bmp16x16[32] = {
//	0x00,0x00,0x40,0xE0,0xE0,0xE0,0xE0,0x70,0x7C,0xFE,0xF8,0x80,0x80,0x00,0x00,0x00,
//	0x00,0x00,0x00,0x00,0x01,0x03,0x7F,0x3E,0x1E,0x07,0x07,0x07,0x03,0x03,0x02,0x00
//};

unsigned char bmp1_16x16[32] = {
	0xF0,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,0xF0,
	0x0F,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x0F
};

unsigned char bmp2_16x16[32] = {
	0x00,0x00,0x00,0x00,0xFF,0x01,0x01,0x01,0x01,0x01,0x01,0xFF,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0xFF,0x80,0x80,0x80,0x80,0x80,0x80,0xFF,0x00,0x00,0x00,0x00
};

unsigned char bmp3_16x16[32] = {
	0x00,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0xE0,0x00,
	0x00,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x00
};

unsigned char bmp4_16x16[32] = {
	0x00,0x00,0x00,0x00,0x00,0xFE,0xFE,0xFE,0xFE,0xFE,0xFE,0x00,0x00,0x00,0x00,0x00,
	0x00,0x00,0x00,0x00,0x00,0x7F,0x7F,0x7F,0x7F,0x7F,0x7F,0x00,0x00,0x00,0x00,0x00
};


int main(void)
{
	int8_t x=0,y=0;
	int8_t keyin=0;
	int8_t movX=3, dirX=0;
	int8_t movY=3, dirY=0;
	int type = 0;
	SYS_Init();
	  
	init_LCD();
	clear_LCD();
	
	OpenKeyPad();
	
  x= 50; y=16;	
	//print_Line(0,"LCD Bmp Keypad");
	//print_Line(2,"to move bitmap");
	//print_Line(3,"press Keypad 1~9");
	draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp1_16x16);
	
	while(keyin==0) keyin=ScanKey(); // wait till key is pressed

	clear_LCD();
	
	while(1) {
		
    keyin=ScanKey(); // Scan 3x3 keypad
    switch(keyin){   // input 1~9 to chang (x,y) direction
		  case 1:	dirX=-1; dirY=-1; break;
			case 2: dirX=0;  dirY=-1; break;
			case 3: dirX=+1; dirY=-1; break;
			case 4:	dirX=-1; dirY=0;  break;
			case 5: 
				if(type == 0){
					type = 1;
					break;
				}
				else{
					type = 0;
					break;
				}
			case 6: dirX=+1; dirY=0;  break;
		  case 7:	dirX=-1; dirY=+1; break;
			case 8: dirX=0;  dirY=+1; break;
			case 9: dirX=+1; dirY=+1; break;			
			default: break;
		}
		
		if(type == 0){
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp1_16x16); // Draw Object
			CLK_SysTickDelay(100000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp1_16x16); // Erase Object
		}
		else if(type == 1){
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp2_16x16); // Draw Object
			CLK_SysTickDelay(100000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp2_16x16); // Erase Object
		}
		
		x=x + dirX * movX; // increment/decrement X
		y=y + dirY * movY; // increment/decrement Y
		
		//if (x<0)           x=LCD_Xmax-16; // check X boundary Min
		//if (x>LCD_Xmax-16) x=0;           // check X boundary Max
		//if (y<0)           y=LCD_Ymax-16; // check Y boundary Min
		//if (y>LCD_Ymax-16) y=0;		        // check Y boundary Max
		
		
		// Type 0 //
		if( x <= 1 && type == 0 ){
			dirX =+1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp3_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp3_16x16); // Erase Object
		}
		if( x >= 112 && type == 0 ){
			dirX =-1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp3_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp3_16x16); // Erase Object 
		}
		if(y <= -3 && type == 0 ){
			y =-3;
			dirY =+1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp3_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp3_16x16); // Erase Object
		}
		if(y >= 52 && type == 0 ){
			dirY =-1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp3_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp3_16x16); // Erase Object				
		}
		
		// Type 1 //
		if( x <= -3 && type == 1 ){ //good
				dirX =+1;
				draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp4_16x16); // Draw Object
				CLK_SysTickDelay(1000000);                      // Delay for Vision
				draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp4_16x16); // Erase Object
		}
		if( x >= 114 && type == 1 ){ //good
			dirX =-1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp4_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp4_16x16); // Erase Object
		}
		if( y <= 1 && type == 1 ){ //good
			dirY =+1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp4_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp4_16x16); // Erase Object
		}
		if( y >= 48 && type == 1 ){ //good
			dirY =-1;
			draw_Bmp16x16(x,y,FG_COLOR,BG_COLOR,bmp4_16x16); // Draw Object
			CLK_SysTickDelay(1000000);                      // Delay for Vision
			draw_Bmp16x16(x,y,BG_COLOR,BG_COLOR,bmp4_16x16); // Erase Object
		}
	}
}
