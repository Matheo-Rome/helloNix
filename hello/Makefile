CC=gcc
CFLAGS=-Wall -Wextra -Werror -pedantic -std=c99 -Wvla
PREFIX=/usr/bin

all: hello

library: libhello.a

libhello.a: hello.o
	ar crs -o $@ $^

hello: main.o
	$(CC) -o $@ $^ 

install: 
	install -m 0755	libhello.a $(PREFIX)/lib
	install -m 0755	hello.h $(PREFIX)/include

clean: 
	$(RM) *.o hello *.a
