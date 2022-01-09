$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/languages_small.mk)

PRODUCT_COPY_FILES += device/samsung/j2xlte/prebuilt/zImage:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := goya
PRODUCT_NAME := omni_goya
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T110
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab 3 Lite 7.0
TARGET_VENDOR := samsung
