CC = gcc
CFLAGS = -Wall -Werror -Wextra -fsanitize=address -g

all: ./src/*.c
	$(CC) -o ./bin/mmake $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f ./bin/mmake
