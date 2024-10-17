CC=gcc
CFLAGS=-Wall -Wextra -Werror -pedantic -std=c99 -Wvla
PREFIX=/usr/bin

all: hello

hello: main.o
	$(CC) -o $@ $^ 

install: 
	install -m 0755	hello $(PREFIX)/bin

clean: 
	$(RM) main.o hello 
