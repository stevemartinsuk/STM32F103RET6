################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../odometer/odometer.c 

OBJS += \
./odometer/odometer.o 

C_DEPS += \
./odometer/odometer.d 


# Each subdirectory must supply rules for building sources it contributes
odometer/%.o odometer/%.su odometer/%.cyclo: ../odometer/%.c odometer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../grbl -I../Inc -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"R:/Software Development/STM32/GRBL Driver STM32F103RET6_clean" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-odometer

clean-odometer:
	-$(RM) ./odometer/odometer.cyclo ./odometer/odometer.d ./odometer/odometer.o ./odometer/odometer.su

.PHONY: clean-odometer

