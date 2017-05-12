################################################################################
# Automatically-generated file. Do not edit!
################################################################################

O_SRCS := 
C_SRCS := 
S_UPPER_SRCS := 
S_SRCS := 
OBJ_SRCS := 
MEMORYMAP := 
OBJS := 
C_DEPS := 
SRECFILES := 
IHEXFILES := 
LISTINGS := 
EXECUTABLES := 

# Every subdirectory with source files must be described here
SUBDIRS := \
. \
drivers_config/mss_ace \
drivers/mss_uart \
drivers/mss_spi \
drivers/mss_pdma \
drivers/mss_gpio \
drivers/mss_ethernet_mac \
drivers/mss_ace \
drivers/mac \
application_tasks \
FreeRTOS/Source \
FreeRTOS/Source/portable/GCC/ARM_CM3 \
CMSIS \
CMSIS/startup_gcc \
BSP/spi_flash_driver \
BSP/oled_driver \
BSP/i2c_driver \

################################################################################
# Actel SoftConsole IDE Variables
################################################################################

BUILDCMD := arm-none-eabi-gcc -mthumb -mcpu=cortex-m3 -specs=bare.specs -T ../CMSIS/startup_gcc/debug-in-actel-smartfusion-envm.ld -Wl,-Map=$@.map 
SHELL := cmd.exe
EXECUTABLES := freertos_ledflash
