CC = gcc
CFLAGS = -Wall -Wextra -O2
TARGET = hello

.PHONY: all windows clean

all: $(TARGET)

$(TARGET): hello.c
	$(CC) $(CFLAGS) -o $(TARGET) hello.c

windows:
	x86_64-w64-mingw32-gcc $(CFLAGS) -o hello.exe hello.c

clean:
	rm -f $(TARGET) hello.exe hello.obj hello.o
