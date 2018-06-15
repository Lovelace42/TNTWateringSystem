CC_C = arm-linux-gnueabihf-gcc
CC_L = gcc
CFLAGS = -Wall -g -std=c99 -D_POSIX_C_SOURCE=200809L -Werror -pthread
C_FILES = main.c valve.c pump.c
APP_NAME = watering_system
HARDWARE_PATH = $(HOME)/cmpt433/public/myApps/

all:
	$(CC_C) $(CFLAGS) $(C_FILES) -o $(APP_NAME)
	cp $(APP_NAME) $(HARDWARE_PATH)
