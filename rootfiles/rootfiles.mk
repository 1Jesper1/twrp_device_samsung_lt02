include $(CLEAR_VARS)
LOCAL_MODULE := init.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)

LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := ffs-check.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)

LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.pxa988.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)

LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := healthd
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := RECOVERY_EXECUTABLES

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)

LOCAL_SRC_FILES := sbin/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)


PRODUCT_COPY_FILES += \
	device/samsung/goya/rootfiles/root/init.rc:root/init.rc \
	device/samsung/goya/rootfiles/root/ueventd.pxa988.rc:root/ueventd.pxa988.rc \
	device/samsung/goya/rootfiles/root/ffs-check.sh:root/ffs-check.sh \
	device/samsung/goya/rootfiles/root/etc/healthd:root/etc/healthd
