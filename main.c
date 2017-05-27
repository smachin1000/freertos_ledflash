#include <stdio.h>
#include <stdlib.h>

#include "a2fxxxm3.h"
#include "./drivers/mss_gpio/mss_gpio.h"
#include "./drivers/mss_watchdog/mss_watchdog.h"
#include "./drivers/mss_uart/mss_uart.h"
#include "./drivers/mss_ace/mss_ace.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#define SYS_TICK_CTRL_AND_STATUS_REG      0xE000E010
#define SYS_TICK_CONFIG_REG               0xE0042038
#define SYS_TICK_FCLK_DIV_32_NO_REF_CLK   0x31000000
#define ENABLE_SYS_TICK                   0x7

extern void led_task(void *para);
extern void led_initialization(void);

void init_system()
{
    /* Disable the Watch Dog Timer */
    MSS_WD_disable( );
    /* Initialize the GPIO */
    MSS_GPIO_init();
    /* GPIO inits for the LEDs */
    led_initialization();
} 

int main()
{
	int c;
    /* Initialization all necessary hardware components */
    init_system();

    c = xTaskCreate( led_task,						// task "run" function
				 ( signed portCHAR * ) "led_task",  // task name
                 configMINIMAL_STACK_SIZE,			// task stack size in 32 bit words
                 NULL,								// params to pass to run function
                 tskIDLE_PRIORITY + 1,				// task priority
                 NULL );							// task handle

	if (c != pdPASS) {
		printf("task create failed with code %d, exiting\n", c);
		return 1;
	}
    /* Enable the SYS TICK Timer and provide the divider and clock source
     * this is required to enable the RTOS tick */
    *(volatile unsigned long *)SYS_TICK_CTRL_AND_STATUS_REG = ENABLE_SYS_TICK;
    *(volatile unsigned long *)SYS_TICK_CONFIG_REG          = SYS_TICK_FCLK_DIV_32_NO_REF_CLK;

    /* Start the scheduler. */
    vTaskStartScheduler();

    /* Will only get here if there was not enough heap space to create the
    idle task. */
    printf("\n Test Case End: Should never Come here \n\r");
    return 0;
}
