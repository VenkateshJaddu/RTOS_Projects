################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c 

OBJS += \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o 

C_DEPS += \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d 


# Each subdirectory must supply rules for building sources it contributes
Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o: C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.c Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/Config" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/OS" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/include" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Common_RTOS_File-2f-Third_Party-2f-SEGGER-2f-SEGGER-2f-Syscalls

clean-Common_RTOS_File-2f-Third_Party-2f-SEGGER-2f-SEGGER-2f-Syscalls:
	-$(RM) ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.cyclo ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.d ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.o ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/Syscalls/SEGGER_RTT_Syscalls_GCC.su

.PHONY: clean-Common_RTOS_File-2f-Third_Party-2f-SEGGER-2f-SEGGER-2f-Syscalls

