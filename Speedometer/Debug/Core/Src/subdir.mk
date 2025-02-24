################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/CAN_Functionalities.c \
../Core/Src/LCD.c \
../Core/Src/it.c \
../Core/Src/main_1.c \
../Core/Src/msp.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c 

OBJS += \
./Core/Src/CAN_Functionalities.o \
./Core/Src/LCD.o \
./Core/Src/it.o \
./Core/Src/main_1.o \
./Core/Src/msp.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o 

C_DEPS += \
./Core/Src/CAN_Functionalities.d \
./Core/Src/LCD.d \
./Core/Src/it.d \
./Core/Src/main_1.d \
./Core/Src/msp.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/include" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/Config" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/OS" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/CAN_Functionalities.cyclo ./Core/Src/CAN_Functionalities.d ./Core/Src/CAN_Functionalities.o ./Core/Src/CAN_Functionalities.su ./Core/Src/LCD.cyclo ./Core/Src/LCD.d ./Core/Src/LCD.o ./Core/Src/LCD.su ./Core/Src/it.cyclo ./Core/Src/it.d ./Core/Src/it.o ./Core/Src/it.su ./Core/Src/main_1.cyclo ./Core/Src/main_1.d ./Core/Src/main_1.o ./Core/Src/main_1.su ./Core/Src/msp.cyclo ./Core/Src/msp.d ./Core/Src/msp.o ./Core/Src/msp.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.cyclo ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su

.PHONY: clean-Core-2f-Src

