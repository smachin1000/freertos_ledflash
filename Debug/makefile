################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include drivers_config/mss_ace/subdir.mk
-include drivers/mss_uart/subdir.mk
-include drivers/mss_spi/subdir.mk
-include drivers/mss_pdma/subdir.mk
-include drivers/mss_gpio/subdir.mk
-include drivers/mss_ethernet_mac/subdir.mk
-include drivers/mss_ace/subdir.mk
-include drivers/mac/subdir.mk
-include application_tasks/subdir.mk
-include FreeRTOS/Source/subdir.mk
-include FreeRTOS/Source/portable/GCC/ARM_CM3/subdir.mk
-include CMSIS/subdir.mk
-include CMSIS/startup_gcc/subdir.mk
-include BSP/spi_flash_driver/subdir.mk
-include BSP/oled_driver/subdir.mk
-include BSP/i2c_driver/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
MEMORYMAP += \
memory-map.xml \

IHEXFILES += \
freertos_ledflash.hex \

SRECFILES += \
freertos_ledflash.srec \

LISTINGS += \
freertos_ledflash.lst \


# All Target
all: freertos_ledflash secondary-outputs

# Tool invocations
freertos_ledflash: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU C Linker'
	arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -specs=bare.specs -T ../CMSIS/startup_gcc/debug-in-actel-smartfusion-envm.ld -Wl,-Map=$@.map -o"freertos_ledflash" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

memory-map.xml: $(EXECUTABLES)
	@echo 'Invoking: Memory map generator'
	actel-map -o "memory-map.xml" $(EXECUTABLES) $(BUILDCMD)
	@echo 'Finished building: $@'
	@echo ' '

freertos_ledflash.hex: $(EXECUTABLES)
	@echo 'Invoking: GNU Intel Hex File Generator'
	arm-none-eabi-objcopy -O ihex $(EXECUTABLES) "freertos_ledflash.hex"
	@echo 'Finished building: $@'
	@echo ' '

freertos_ledflash.srec: $(EXECUTABLES)
	@echo 'Invoking: GNU S-Record Generator'
	arm-none-eabi-objcopy -O srec $(EXECUTABLES) "freertos_ledflash.srec"
	@echo 'Finished building: $@'
	@echo ' '

freertos_ledflash.lst: $(EXECUTABLES)
	@echo 'Invoking: GNU Listing Generator'
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "freertos_ledflash.lst"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(MEMORYMAP)$(OBJS)$(C_DEPS)$(SRECFILES)$(IHEXFILES)$(LISTINGS)$(EXECUTABLES) freertos_ledflash
	-@echo ' '

secondary-outputs: $(MEMORYMAP) $(IHEXFILES) $(SRECFILES) $(LISTINGS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
