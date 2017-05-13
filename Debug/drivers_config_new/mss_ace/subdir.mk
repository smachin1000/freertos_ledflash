################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers_config_new/mss_ace/ace_config.c 

OBJS += \
./drivers_config_new/mss_ace/ace_config.o 

C_DEPS += \
./drivers_config_new/mss_ace/ace_config.d 


# Each subdirectory must supply rules for building sources it contributes
drivers_config_new/mss_ace/%.o: ../drivers_config_new/mss_ace/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU C Compiler'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -DACTEL_STDIO_THRU_UART -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\application_tasks" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\BSP" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\BSP\oled_driver" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\BSP\i2c_driver" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\CMSIS" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\CMSIS\startup_gcc" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\drivers\mss_ace" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\drivers\mss_ethernet_mac" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\drivers\mss_gpio" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\drivers\mss_uart" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\drivers\mss_watchdog" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\drivers_config\mss_ace" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\FreeRTOS\Source\include" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\FreeRTOS\Source\portable" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\FreeRTOS\Source\portable\GCC\ARM_CM3" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\port_config" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\uipstack" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\webserver" -I"D:\DATA\PROJECTS\A2F500_Webserver_DF\Software\SoftConsole\SmartFusion_Webserver_Demo\webserver\httpd-fs" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


