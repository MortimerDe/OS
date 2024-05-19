CC = gcc
CFLAGS = -Wall -Wextra -pedantic

TARGET = main
SOURCES = main.c fact.c
HEADERS = fact.h

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(SOURCES) $(HEADERS)
    $(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)

clean:
    rm -f $(TARGET)

run: $(TARGET)
    ./$(TARGET)
