CC = gcc
CFLAGS = -Wall -Werror -Wextra -fsanitize=address -g

all: ./src/*.c
	$(CC) -o ./bin/mmake $^ $(CFLAGS)

clean:
	rm -f ./bin/mmake

.PHONY: clean
