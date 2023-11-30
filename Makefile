VERSION=1.1
CC=arm-linux-gnueabihf-gcc
CFLAGS=-static

udpbroadcastrelay: main.c
	$(CC) $(CFLAGS) -g main.c -o udpbroadcastrelay

clean:
	rm -f udpbroadcastrelay

all:
	$(CC) $(CFLAGS) -g main.c -o udpbroadcastrelay

install:
	cp udpbroadcastrelay /usr/local/sbin/
	chmod 755 /usr/local/sbin/udpbroadcastrelay
