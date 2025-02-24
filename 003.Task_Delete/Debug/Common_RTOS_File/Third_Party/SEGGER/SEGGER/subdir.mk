################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.c \
C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.c \
C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

S_UPPER_SRCS += \
C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.o \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.o \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

S_UPPER_DEPS += \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.d \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.d \
./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.o: C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.c Common_RTOS_File/Third_Party/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/Config" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/OS" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/include" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o: C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.S Common_RTOS_File/Third_Party/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/Config" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.o: C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.c Common_RTOS_File/Third_Party/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/Config" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/OS" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/include" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o: C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c Common_RTOS_File/Third_Party/SEGGER/SEGGER/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/Config" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/OS" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/SEGGER/SEGGER" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/include" -I"C:/Users/JadduVenkatesh/Desktop/FreeRTOS/RTOS_WorkSpace/Common_RTOS_File/Third_Party/FreeRTOS/portable/GCC/ARM_CM4F" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Common_RTOS_File-2f-Third_Party-2f-SEGGER-2f-SEGGER

clean-Common_RTOS_File-2f-Third_Party-2f-SEGGER-2f-SEGGER:
	-$(RM) ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.cyclo ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.d ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.o ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT.su ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.d ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_ASM_ARMv7M.o ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.cyclo ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.d ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.o ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_RTT_printf.su ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.cyclo ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o ./Common_RTOS_File/Third_Party/SEGGER/SEGGER/SEGGER_SYSVIEW.su

.PHONY: clean-Common_RTOS_File-2f-Third_Party-2f-SEGGER-2f-SEGGER

