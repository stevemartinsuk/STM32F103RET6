################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../grbl/kinematics/corexy.c \
../grbl/kinematics/delta.c \
../grbl/kinematics/maslow.c \
../grbl/kinematics/polar.c \
../grbl/kinematics/wall_plotter.c 

OBJS += \
./grbl/kinematics/corexy.o \
./grbl/kinematics/delta.o \
./grbl/kinematics/maslow.o \
./grbl/kinematics/polar.o \
./grbl/kinematics/wall_plotter.o 

C_DEPS += \
./grbl/kinematics/corexy.d \
./grbl/kinematics/delta.d \
./grbl/kinematics/maslow.d \
./grbl/kinematics/polar.d \
./grbl/kinematics/wall_plotter.d 


# Each subdirectory must supply rules for building sources it contributes
grbl/kinematics/%.o grbl/kinematics/%.su grbl/kinematics/%.cyclo: ../grbl/kinematics/%.c grbl/kinematics/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../grbl -I../Inc -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"R:/Software Development/STM32/GRBL Driver STM32F103RET6_clean" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-grbl-2f-kinematics

clean-grbl-2f-kinematics:
	-$(RM) ./grbl/kinematics/corexy.cyclo ./grbl/kinematics/corexy.d ./grbl/kinematics/corexy.o ./grbl/kinematics/corexy.su ./grbl/kinematics/delta.cyclo ./grbl/kinematics/delta.d ./grbl/kinematics/delta.o ./grbl/kinematics/delta.su ./grbl/kinematics/maslow.cyclo ./grbl/kinematics/maslow.d ./grbl/kinematics/maslow.o ./grbl/kinematics/maslow.su ./grbl/kinematics/polar.cyclo ./grbl/kinematics/polar.d ./grbl/kinematics/polar.o ./grbl/kinematics/polar.su ./grbl/kinematics/wall_plotter.cyclo ./grbl/kinematics/wall_plotter.d ./grbl/kinematics/wall_plotter.o ./grbl/kinematics/wall_plotter.su

.PHONY: clean-grbl-2f-kinematics

