/*
  generic_map.h - driver code for STM32F103xx ARM processors

  Part of grblHAL

  Copyright (c) 2020 Terje Io

  Grbl is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Grbl is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with Grbl.  If not, see <http://www.gnu.org/licenses/>.
*/


#define BOARD_NAME "CREALITY247"
//#define STM32F103xE 1


#define SERIAL_PORT             1 // GPIOA: TX = 9, RX = 10


#if N_ABC_MOTORS > 1 || N_GANGED
#error "Axis configuration is not supported!"
#endif

// Define step pulse output pins.
#define STEP_PORT               GPIOB
#define X_STEP_PIN              9
#define Y_STEP_PIN              7
#define Z_STEP_PIN              5
#define STEP_OUTMODE            GPIO_MAP

// Define step direction output pins.
#define X_DIRECTION_PORT        GPIOC
#define X_DIRECTION_PIN         2 //PC10
#define Y_DIRECTION_PORT        GPIOB
#define Y_DIRECTION_PIN         8  //PB8
#define Z_DIRECTION_PORT        GPIOB
#define Z_DIRECTION_PIN         6  //PB6
#define DIRECTION_OUTMODE       GPIO_BITBAND

// Define stepper driver enable/disable output pin.
#define STEPPERS_ENABLE_PORT    GPIOC
#define STEPPERS_ENABLE_PIN     3

// Define homing/hard limit switch input pins.
#define LIMIT_PORT              GPIOA
#define X_LIMIT_PIN             5
#define Y_LIMIT_PIN             6
#define Z_LIMIT_PIN             7
#define LIMIT_INMODE            GPIO_MAP

// Define ganged axis or A axis step pulse and step direction output pins.
#if N_ABC_MOTORS == 1
#define M3_AVAILABLE
#define M3_STEP_PORT            GPIOB
#define M3_STEP_PIN             3
#define M3_DIRECTION_PORT       GPIOB
#define M3_DIRECTION_PIN        4
#define M3_LIMIT_PORT           LIMIT_PORT
#define M3_LIMIT_PIN            4
#endif

// Define driver spindle pins

#if DRIVER_SPINDLE_PWM_ENABLE
#define SPINDLE_PWM_PORT_BASE   GPIOA_BASE
#define SPINDLE_PWM_PIN         8
#else
#define AUXOUTPUT0_PORT         GPIOB
#define AUXOUTPUT0_PIN          2
#endif

#if DRIVER_SPINDLE_DIR_ENABLE
#define SPINDLE_DIRECTION_PORT  GPIOB
#define SPINDLE_DIRECTION_PIN   4
#else
#define AUXOUTPUT1_PORT         GPIOB
#define AUXOUTPUT1_PIN          10
#endif

#if DRIVER_SPINDLE_ENABLE
#define SPINDLE_ENABLE_PORT     GPIOB
#define SPINDLE_ENABLE_PIN      1
#else
#define AUXOUTPUT2_PORT         GPIOB
#define AUXOUTPUT2_PIN          11
#endif

// Define flood and mist coolant enable output pins.
#define COOLANT_FLOOD_PORT      GPIOB
#define COOLANT_FLOOD_PIN       0
#define COOLANT_MIST_PORT       GPIOB
#define COOLANT_MIST_PIN        1

// Define user-control controls (cycle start, reset, feed hold) input pins.
#define CONTROL_PORT            GPIOB
#define RESET_PIN               12
#define FEED_HOLD_PIN           13
#define CYCLE_START_PIN         14
#ifdef ENABLE_SAFETY_DOOR_INPUT_PIN
#define SAFETY_DOOR_PIN         13
#endif
#define CONTROL_INMODE          GPIO_SHIFT5

// Define probe switch input pin.
#define PROBE_PORT              GPIOC
#define PROBE_PIN               5

#if I2C_STROBE_ENABLE
#define I2C_STROBE_PORT         GPIOB
#define I2C_STROBE_PIN          14
#endif

#if SDCARD_ENABLE
#define SPI1_REMAP
#define SD_CS_PORT              GPIOC
#define SD_CS_PIN               11
// The following defines are not used but defined for reference
// Port init and remap is done by HAL_SPI_MspInit() in stm32f1xx_hal_msp.c
#define SD_IO_PORT              GPIOC
#define SD_SCK_PIN              12
#define SD_MISO_PIN             8
#define SD_MOSI_PIN             10
#endif

/**/
