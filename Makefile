# Makefile for bedd

CC = gcc
CFLAGS = -Iinclude -Wno-format-overflow

.PHONY: all

all:
	$(CC) $(CFLAGS) langs/*.c *.c -o bedd

clean:
	rm bedd
