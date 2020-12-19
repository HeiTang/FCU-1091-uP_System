//
// I2C_IMU_Tilt
//
// EVB : Nu-LB-NUC140
// MCU : NUC140VE3CN (LQFP100)
// IMU : MPU6050 (3-axis accelerometer & 3-axis gyroscope)
// 
// MPU6050 Connections
// VCC : to VCC5 / VCC33
// GND : to GND
// SCL : to I2C0-SCL/PA9
// SDA : to I2C0-SDA/PA8

#include <stdio.h>
#include <math.h>
#include <string.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "LCD.h"
#include "MPU6050.h"
#include "NVT_I2C.h"

#define PI 3.14159265359

char Text[16];

unsigned char bmp_16x16[32] = {
	0xE0,0xF8,0xFC,0xFE,0xFE,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFE,0xFE,0xFC,0xF8,0xE0,
	0x07,0x1F,0x3F,0x7F,0x7F,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x7F,0x7F,0x3F,0x1F,0x07,
};

int32_t main()
{
	int8_t x = 0, y = 0;
	int8_t keyin = 0;
	int8_t movX = 3, dirX = 0;
	int8_t movY = 3, dirY = 0;
  int16_t ax[1], ay[1], az[1];	
  float pitch, roll;
	
  SYS_Init();
  init_LCD();
  clear_LCD();
	
  NVT_I2C_Init(I2C0_CLOCK_FREQUENCY);
  MPU6050_address(MPU6050_DEFAULT_ADDRESS);
  MPU6050_initialize();
	
	x = 50;
  y = 26;
	
	draw_Bmp16x16(x, y, FG_COLOR, BG_COLOR, bmp_16x16);

  while(1) {		
    MPU6050_getAcceleration(ax, ay, az);

    pitch = atan(ax[0]/ sqrt(pow(ay[0],2)+pow(az[0],2))) * 180/PI;	
    roll  = atan(ay[0]/ sqrt(pow(ax[0],2)+pow(az[0],2))) * 180/PI;
		
		if (pitch < -5) {
			if (roll > 5) { dirX = +1; dirY = -1; }
			if (roll < -5) { dirX = -1; dirY = -1; }
			if (roll < 5 && roll > -5) { dirX = 0 ; dirY = -1; }
		}
		if (pitch > 5) {
			if (roll > 5) { dirX = +1; dirY = +1; }
			if (roll < -5) { dirX = -1; dirY = +1; }
			if (roll < 5 && roll > -5) { dirX = 0 ; dirY = +1; }
		}
		if (pitch < 5 && pitch > -5 ) {
			if (roll > 5) { dirX = +1; dirY = 0; }
			if (roll < -5) { dirX = -1; dirY = 0; }
			if (roll < 5 && roll > -5) { dirX = 0 ; dirY = 0; }
		}
		
		x = x + dirX * movX; // increment/decrement X
    y = y + dirY * movY; // increment/decrement Y
		
		if (x <= 0 ) { x = 0; }
		if (x >= 112) { x = 112; }
		if (y <= 0) { y = 0; }
		if (y >= 48) { y = 48; }
		
		clear_LCD();
    draw_Bmp16x16(x, y, FG_COLOR, BG_COLOR, bmp_16x16);
		CLK_SysTickDelay(100000);
    }

}
