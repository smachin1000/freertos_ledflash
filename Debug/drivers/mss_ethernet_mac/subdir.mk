################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/mss_ethernet_mac/crc32.c \
../drivers/mss_ethernet_mac/mss_ethernet_mac.c \
../drivers/mss_ethernet_mac/phy.c 

OBJS += \
./drivers/mss_ethernet_mac/crc32.o \
./drivers/mss_ethernet_mac/mss_ethernet_mac.o \
./drivers/mss_ethernet_mac/phy.o 

C_DEPS += \
./drivers/mss_ethernet_mac/crc32.d \
./drivers/mss_ethernet_mac/mss_ethernet_mac.d \
./drivers/mss_ethernet_mac/phy.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/mss_ethernet_mac/%.o: ../drivers/mss_ethernet_mac/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\application_tasks" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\BSP" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\BSP\oled_driver" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\BSP\i2c_driver" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\CMSIS" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\CMSIS\startup_gcc" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_ace" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_ethernet_mac" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_gpio" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_watchdog" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers_config\mss_ace" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\FreeRTOS\Source\include" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\FreeRTOS\Source\portable" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\FreeRTOS\Source\portable\GCC\ARM_CM3" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\port_config" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

