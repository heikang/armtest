################################################################################
CROSS_COMPILE = arm-linux-
################################################################################

CC = $(CROSS_COMPILE)gcc

STRIP = $(CROSS_COMPILE)strip

CFLAGS = -static -Wall

TOOLLIST = nbench ncurses stream vmstat

TOOLS_SRC = tools

OUTPUT=`pwd`/bin

.PHONY: all clean mrproper distclean

all:
	for comp in $(TOOLLIST);do \
		make CC=$(CC) CFLAGS=$(CFLAGS) OUTPUT=$(OUTPUT) -C "$(TOOLS_SRC)"/$$comp||exit; \
	done

clean:
	for comp in $(TOOLLIST);do make -C $(TOOLS_SRC)/$$comp clean;done

mrproper:
	for comp in $(TOOLLIST);do make -C $(TOOLS_SRC)/$$comp mrproper;done

distclean:
	for comp in $(TOOLLIST);do make -C $(TOOLS_SRC)/$$comp distclean;done
