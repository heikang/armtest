################################################################################
BUILD := nbench-byte-2.2.3
################################################################################
.PHONY: $(BUILD) clean distclean
defalut: $(BUILD)
################################################################################

TARGETS=nbench

download:
	@if [ ! -f $(BUILD).tar.gz ]; then curl --insecure -O http://mirrors.163.com/gentoo/distfiles/$(BUILD).tar.gz; fi

$(BUILD): download
	@if [ ! -d  "$(BUILD)" ]; then\
		tar -xzf $(BUILD).tar.gz;\
	fi
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
