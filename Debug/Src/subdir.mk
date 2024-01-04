################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/btt_skr_mini_e3_2.0.c \
../Src/diskio.c \
../Src/driver.c \
../Src/i2c.c \
../Src/ioports.c \
../Src/mach3_bob.c \
../Src/openpnp.c \
../Src/serial.c 

OBJS += \
./Src/btt_skr_mini_e3_2.0.o \
./Src/diskio.o \
./Src/driver.o \
./Src/i2c.o \
./Src/ioports.o \
./Src/mach3_bob.o \
./Src/openpnp.o \
./Src/serial.o 

C_DEPS += \
./Src/btt_skr_mini_e3_2.0.d \
./Src/diskio.d \
./Src/driver.d \
./Src/i2c.d \
./Src/ioports.d \
./Src/mach3_bob.d \
./Src/openpnp.d \
./Src/serial.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xE -c -I../grbl -I../Inc -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"R:/Software Development/STM32/GRBL Driver STM32F103RET6_clean" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/btt_skr_mini_e3_2.0.cyclo ./Src/btt_skr_mini_e3_2.0.d ./Src/btt_skr_mini_e3_2.0.o ./Src/btt_skr_mini_e3_2.0.su ./Src/diskio.cyclo ./Src/diskio.d ./Src/diskio.o ./Src/diskio.su ./Src/driver.cyclo ./Src/driver.d ./Src/driver.o ./Src/driver.su ./Src/i2c.cyclo ./Src/i2c.d ./Src/i2c.o ./Src/i2c.su ./Src/ioports.cyclo ./Src/ioports.d ./Src/ioports.o ./Src/ioports.su ./Src/mach3_bob.cyclo ./Src/mach3_bob.d ./Src/mach3_bob.o ./Src/mach3_bob.su ./Src/openpnp.cyclo ./Src/openpnp.d ./Src/openpnp.o ./Src/openpnp.su ./Src/serial.cyclo ./Src/serial.d ./Src/serial.o ./Src/serial.su

.PHONY: clean-Src

