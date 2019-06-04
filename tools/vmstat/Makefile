################################################################################
BUILD := vmstat
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
	-make -C $(BUILD) clean

################################################################################
