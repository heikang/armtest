CC = gcc

.PHONY: all clean

all: vmstat

vmstat: vmstat.c
	$(CC) $(CFLAGS) $< -o $@

mrproper:
	rm -rf vmstat

clean: mrproper
	rm -rf *.o
