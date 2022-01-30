BUILT_RAMDISK_CPIO := $(PRODUCT_OUT)/ramdisk-recovery.cpio
COMPRESS_COMMAND := xz --format=lzma

ifdef TARGET_PREBUILT_DTB
	BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DTB)
endif

INSTALLED_RECOVERYIMAGE_TARGET := $(PRODUCT_OUT)/recovery.img
$(INSTALLED_RECOVERYIMAGE_TARGET): $(recovery_ramdisk)
	@echo -e ${CL_CYN}"------- Compressing recovery ramdisk -------"${CL_RST}
	$(hide) $(COMPRESS_COMMAND) "$(BUILT_RAMDISK_CPIO)"
	@echo -e ${CL_CYN}"------- Making recovery image -------"${CL_RST}
	$(hide) $(MKBOOTIMG) \
		--kernel $(TARGET_PREBUILT_KERNEL) \
		--ramdisk $(BUILT_RAMDISK_CPIO).lzma \
		--cmdline "$(BOARD_KERNEL_CMDLINE)" \
		--base $(BOARD_KERNEL_BASE) \
		--pagesize $(BOARD_KERNEL_PAGESIZE) \
		$(BOARD_MKBOOTIMG_ARGS) \
		-o $(INSTALLED_RECOVERYIMAGE_TARGET)
	@echo -e ${CL_CYN}"------- Made recovery image: $@ -------"${CL_RST}
