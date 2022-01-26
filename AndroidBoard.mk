LOCAL_PATH := $(call my-dir)

ifneq ($(filter lt02,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

include $(CLEAR_VARS)
ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)
