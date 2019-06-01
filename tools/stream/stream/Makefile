CC = gcc

DEF = -DSTREAM_ARRAY_SIZE=1000000 -DNTIME=20

.PHONY: all clean

all: stream

stream: stream.c
	$(CC) $(DEF) $(CFLAGS) $< -o $@

mrproper:
	rm -rf stream

clean: mrproper
	rm -rf *.o
