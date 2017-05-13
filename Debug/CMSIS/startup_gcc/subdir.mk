################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../CMSIS/startup_gcc/newlib_stubs.c 

S_SRCS += \
../CMSIS/startup_gcc/startup_a2fxxxm3.s 

OBJS += \
./CMSIS/startup_gcc/newlib_stubs.o \
./CMSIS/startup_gcc/startup_a2fxxxm3.o 

C_DEPS += \
./CMSIS/startup_gcc/newlib_stubs.d 


# Each subdirectory must supply rules for building sources it contributes
CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\application_tasks" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\BSP" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\BSP\oled_driver" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\BSP\i2c_driver" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\CMSIS" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\CMSIS\startup_gcc" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_ace" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_ethernet_mac" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_gpio" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers\mss_watchdog" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\drivers_config\mss_ace" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\FreeRTOS\Source\include" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\FreeRTOS\Source\portable" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\FreeRTOS\Source\portable\GCC\ARM_CM3" -I"C:\Documents and Settings\sean\workspace\freertos_ledflash\port_config" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

CMSIS/startup_gcc/%.o: ../CMSIS/startup_gcc/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Assembler'
	arm-none-eabi-gcc -c -mthumb -mcpu=cortex-m3 -specs=bare.specs  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


