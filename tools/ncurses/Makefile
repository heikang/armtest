################################################################################
BUILD := ncurses-6.0
################################################################################
.PHONY: $(BUILD) clean distclean
defalut: $(BUILD)
################################################################################

TARGETS=ncurses

download:
	@if [ ! -f $(BUILD).tar.gz ]; then curl --insecure -O https://ftp.gnu.org/gnu/ncurses/$(BUILD).tar.gz; fi

$(BUILD): download
	@if [ ! -d  "$(BUILD)" ]; then\
		tar -xzf $(BUILD).tar.gz;\
	fi

	#./build.sh

clean:
	-make -C $(BUILD) clean

mrproper:
	-make -C $(BUILD) mrproper

distclean: clean
	-rm -rf $(BUILD)

################################################################################
