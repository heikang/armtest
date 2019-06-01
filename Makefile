################################################################################
CROSS_COMPILE = arm-linux-
################################################################################

CC = $(CROSS_COMPILE)gcc

STRIP = $(CROSS_COMPILE)strip

CFLAGS = -static

TOOLLIST = nbench

TOOLS_SRC = tools

OUTPUT=`pwd`/bin

.PHONY: all clean mrproper distclean

all:
	for comp in $(TOOLLIST);do \
		make CC=$(CC) CFLAGS=$(CFLAGS) OUTPUT=$(OUTPUT) -C "$(TOOLS_SRC)"/$$comp||exit; \
	done

clean:
	-make -C $(TOOLS_SRC)/$(TOOLLIST) clean

mrproper:
	-make -C $(TOOLS_SRC)/$(TOOLLIST) mrproper

distclean: clean
	-make -C $(TOOLS_SRC)/$(TOOLLIST) distclean
