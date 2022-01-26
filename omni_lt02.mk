$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE       := lt02
PRODUCT_NAME         := omni_lt02
PRODUCT_BRAND        := samsung
PRODUCT_MODEL        := SM-T210
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := Samsung Galaxy Tab 3 7.0
TARGET_VENDOR        := samsung

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
