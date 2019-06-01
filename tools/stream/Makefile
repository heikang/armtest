################################################################################
# http://www.cs.virginia.edu/stream/FTP/Code/stream.c
BUILD := stream
################################################################################
.PHONY: $(BUILD) clean distclean
defalut: $(BUILD)
################################################################################

TARGETS= $(BUILD)

$(BUILD):
	make CC=$(CC) CFLAGS=$(CFLAGS) -C $(BUILD)
	for target in $(TARGETS);do \
		cp $(BUILD)/$$target $(OUTPUT); \
	done

clean:
	-make -C $(BUILD) clean

mrproper:
	-make -C $(BUILD) mrproper

distclean: clean
	-rm -rf $(BUILD)

################################################################################
