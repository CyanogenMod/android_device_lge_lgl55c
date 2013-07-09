## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := lge_gelato

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/lgl55c/full_lgl55c.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lgl55c
PRODUCT_NAME := cm_lgl55c
PRODUCT_BRAND := tracfone
PRODUCT_MODEL := LGL55C
