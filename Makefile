CC = gcc
CFLAGS = -Wall -Werror -Wextra -fsanitize=address -g

all: ./src/*.c
	$(CC) -o ./bin/minimake $^ $(CFLAGS)

clean:
	rm -f ./bin/minimake

.PHONY: clean
