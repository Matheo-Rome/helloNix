CC=gcc
CFLAGS=-Wall -Wextra -Werror -pedantic -std=c99 -Wvla

all: main

main: main.o
	$(CC) -o $@ $^ 

clean: 
	$(RM) main.o main
