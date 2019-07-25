prog	= iotop
CC		= arm-linux-gcc

OOUT=/home/june/data1/tmp/arm-build/output
CFLAGS=-static -I${OOUT}/include/ -I${OOUT}/include/ncurses -L${OOUT}/lib

EXFLAGS	= -lncurses

FILES = src/main.c src/ioprio.c src/utils.c src/views.c src/xxxid_info.c
OBJS = main.o ioprio.o utils.o views.o xxxid_info.o

$(prog)	: $(FILES)
	$(CC) $(CFLAGS) $(FILES) $(EXFLAGS) -o $@

clean:
	rm -f $(OBJS) $(prog)
