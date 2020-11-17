//Define Clock source
#define MCU_CLOCK_SOURCE      
#define MCU_CLOCK_SOURCE_HXT  // HXT, LXT, HIRC, LIRC
#define MCU_CLOCK_FREQUENCY   50000000  //Hz

//Define MCU Interfaces
// SPI3 for LCD
#define MCU_INTERFACE_SPI3
#define SPI3_CLOCK_SOURCE_HCLK // HCLK, PLL
#define PIN_SPI3_SS0_PD8
#define PIN_SPI3_SCLK_PD9
#define PIN_SPI3_MISO0_PD10
#define PIN_SPI3_MOSI0_PD11

// Timer 0
#define MCU_INTERFACE_TMR0
#define TMR0_CLOCK_SOURCE_HXT // HXT, LXT, HCLK, EXT, LIRC, HIRC
#define TMR0_CLOCK_DIVIDER    1
#define TMR0_OPERATING_MODE   TIMER_PERIODIC_MODE // ONESHOT, PERIODIC, TOGGLE, CONTINUOUS
#define TMR0_OPERATING_FREQ   1 //Hz
// Timer 1
#define MCU_INTERFACE_TMR1
#define TMR1_CLOCK_SOURCE_HXT // HXT, LXT, HCLK, EXT, LIRC, HIRC
#define TMR1_CLOCK_DIVIDER    1
#define TMR1_OPERATING_MODE   TIMER_PERIODIC_MODE // ONESHOT, PERIODIC, TOGGLE, CONTINUOUS
#define TMR1_OPERATING_FREQ   1 //Hz
// Timer 2
#define MCU_INTERFACE_TMR2
#define TMR2_CLOCK_SOURCE_HXT // HXT, LXT, HCLK, EXT, LIRC, HIRC
#define TMR2_CLOCK_DIVIDER    1
#define TMR2_OPERATING_MODE   TIMER_PERIODIC_MODE // ONESHOT, PERIODIC, TOGGLE, CONTINUOUS
#define TMR2_OPERATING_FREQ   1 //Hz
// Timer 3
#define MCU_INTERFACE_TMR3
#define TMR3_CLOCK_SOURCE_HXT // HXT, LXT, HCLK, EXT, LIRC, HIRC
#define TMR3_CLOCK_DIVIDER    1
#define TMR3_OPERATING_MODE   TIMER_PERIODIC_MODE // ONESHOT, PERIODIC, TOGGLE, CONTINUOUS
#define TMR3_OPERATING_FREQ   1 //Hz

// PB15
#define MCU_INTERFACE_INT1_PB15

//WDT
#define MCU_INTERFACE_WDT     
#define WWDT_CLOCK_SOURCE_LIRC // LIRC, HCLK_DIV2048, LXT
