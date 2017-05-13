/*************************************************************************
 * (c) Copyright 2009 Actel Corporation.  All rights reserved.
 *
 *  Application demo for Smartfusion
 *
 *
 * Author : Actel Application Team
 * Rev     : 1.0.0.3
 *
 **************************************************************************/

/**************************************************************************/
/* Standard Includes */
/**************************************************************************/

#include <stdio.h>
#include <stdlib.h>

/**************************************************************************/
/* Driver Includes */
/**************************************************************************/

#include "../drivers/mss_gpio/mss_gpio.h"

/**************************************************************************/
/* RTOS Includes */
/**************************************************************************/

#include "FreeRTOS.h"
#include "semphr.h"


void delay(volatile unsigned int n)
{
    while(n != 0) {
        n--;
    }
}

/**************************************************************************/
/* Function LED initialization */
/**************************************************************************/

void led_initialization()
{
    /* Configuration of GPIO's */
    MSS_GPIO_config(MSS_GPIO_0 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_1 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_2 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_3 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_4 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_5 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_6 , MSS_GPIO_OUTPUT_MODE );
    MSS_GPIO_config(MSS_GPIO_7 , MSS_GPIO_OUTPUT_MODE );

    /* Set GPIO to initial value */
    MSS_GPIO_set_outputs( 0xAAAAAAAA );
}

/**************************************************************************/
/* Function LED test */
/* This function blinks the LEDs */
/**************************************************************************/

void led_test()
{
    uint32_t gpio_pattern = MSS_GPIO_get_outputs();
    gpio_pattern ^= 0xFFFFFFFF;
    MSS_GPIO_set_outputs( gpio_pattern );
    delay(100000);
}

/**************************************************************************/
/* Creating LED test as task for RTOS */
/**************************************************************************/

void led_task(void *para)
{
    while (1) {
        led_test();
    }
}
