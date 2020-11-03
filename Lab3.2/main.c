//
// GPIO_7seg_keypad : 3x3 keypad inpt and display on 7-segment LEDs
//
#include <stdio.h>
#include "NUC100Series.h"
#include "MCU_init.h"
#include "SYS_init.h"
#include "Seven_Segment.h"
#include "Scankey.h"

int times;
int tone1[7] = {956, 852, 804, 716, 638, 568, 506};
int tone3[7] = {956, 956, 956, 956, 956, 956, 956};
int tone2[7] = {506, 568, 638, 716, 804, 852, 956};
int stop = 0;
int sum = 0;
int k = 0;
void Buzz(uint32_t number, uint32_t vel)
{
    int i;
    times = (956 - vel) / 4;
    for (i = 0; i < number + times; i++)
    {
        PB11 = 0;              // PB11 = 0 to turn on Buzzer
        CLK_SysTickDelay(vel); // Delay
        PB11 = 1;              // PB11 = 1 to turn off Buzzer
        CLK_SysTickDelay(vel); // Delay
    }
}
// display an integer on four 7-segment LEDs
void Display_7seg(uint16_t value, int k)
{
    uint8_t digit;
    digit = value / 1000;
    CloseSevenSegment();
    if (k >= 4 && digit != 0)
    {
        ShowSevenSegment(3, digit);
        CLK_SysTickDelay(5000);
    }
    value = value - digit * 1000;
    digit = value / 100;
    CloseSevenSegment();
    if (k >= 3 && digit != 0)
    {
        ShowSevenSegment(2, digit);
        CLK_SysTickDelay(5000);
    }
    value = value - digit * 100;
    digit = value / 10;
    CloseSevenSegment();
    if (k >= 2 && digit != 0)
    {
        ShowSevenSegment(1, digit);
        CLK_SysTickDelay(5000);
    }
    value = value - digit * 10;
    digit = value;
    CloseSevenSegment();
    if (k >= 1 && digit != 0)
    {
        ShowSevenSegment(0, digit);
        CLK_SysTickDelay(5000);
    }
}

int main(void)
{
    uint16_t i;

    SYS_Init();
    GPIO_SetMode(PB, BIT11, GPIO_MODE_OUTPUT);
    OpenSevenSegment();
    OpenKeyPad();

    while (1)
    {
        i = ScanKey();

        if (i != 0 && stop == 0 && i != 4 && i != 5 && i != 6)
        {
            sum = sum * 10 + i;
            sum = sum % 1000;
            stop = 1;
            k++;
        }
        else if (i == 0)
        {
            stop = 0;
        }
        else if (i == 4)
        {
            CloseSevenSegment();
            k = 0;
        }
        else if (i == 5)
        {
            int j;
            PC4 = 0;
            if ((sum / 100) > 0)
            {
                int music3 = sum / 100;

                switch (music3)
                {
                case 1:
                    ShowSevenSegment(3, 1);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone1[j]);
                    }
                    break;

                case 2:
                    ShowSevenSegment(3, 2);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone2[j]);
                    }
                    break;

                case 3:
                    ShowSevenSegment(3, 3);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone3[j]);
                    }
                    break;
                }

                sum = sum % 100;
                music3 = sum / 10;

                switch (music3)
                {
                case 1:
                    ShowSevenSegment(3, 1);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone1[j]);
                    }
                    break;
                case 2:
                    ShowSevenSegment(3, 2);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone2[j]);
                    }
                    break;
                case 3:
                    ShowSevenSegment(3, 3);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone3[j]);
                    }
                    break;
                }

                sum = sum % 10;
                music3 = sum;

                switch (music3)
                {
                case 1:
                    ShowSevenSegment(3, 1);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone1[j]);
                    }
                    sum = 0;
                    break;
                case 2:
                    ShowSevenSegment(3, 2);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone2[j]);
                    }
                    sum = 0;
                    break;
                case 3:
                    ShowSevenSegment(3, 3);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone3[j]);
                    }

                    sum = 0;
                    break;
                }
            }
            else if ((sum / 10) > 0 && (sum) < 100)
            {
                int music2 = sum / 10;
                switch (music2)
                {
                case 1:
                    ShowSevenSegment(3, 1);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone1[j]);
                    }
                    break;
                case 2:
                    ShowSevenSegment(3, 2);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone2[j]);
                    }
                    break;
                case 3:
                    ShowSevenSegment(3, 3);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone3[j]);
                    }
                    break;
                }
                sum = sum % 10;
                music2 = sum;
                switch (music2)
                {
                case 1:
                    ShowSevenSegment(3, 1);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone1[j]);
                    }

                    sum = 0;
                    break;
                case 2:
                    ShowSevenSegment(3, 2);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone2[j]);
                    }

                    sum = 0;
                    break;
                case 3:
                    ShowSevenSegment(3, 3);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone3[j]);
                    }

                    sum = 0;
                    break;
                }
            }
            else if ((sum) > 0 && (sum) < 10)
            {
                int music1 = sum;
                switch (music1)
                {
                case 1:
                    ShowSevenSegment(3, 1);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone1[j]);
                    }

                    sum = 0;
                    break;
                case 2:
                    ShowSevenSegment(3, 2);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone2[j]);
                    }

                    sum = 0;
                    break;
                case 3:
                    ShowSevenSegment(3, 3);
                    for (j = 0; j < 7; j++)
                    {
                        CLK_SysTickDelay(100000);
                        Buzz(300, tone3[j]);
                    }

                    sum = 0;
                    break;
                }
            }
        }
        else if (i == 6 && stop == 0)
        {
            sum = sum / 10;
            stop = 1;
            k--;
        }
        Display_7seg(sum, k);
    }
}