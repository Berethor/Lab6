CC=gcc
CFLAGS=-I.

all: client server

server : server.c 
	$(CC) server.c -o server -lpthread -L./lib -ltq6 $(CFLAGS)

client : client.c
	$(CC) client.c -o client -lpthread -L./lib -ltq6 $(CFLAGS)

clean :
	rm client server core*