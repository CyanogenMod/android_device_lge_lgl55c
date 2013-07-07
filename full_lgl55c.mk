PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

$(call inherit-product, device/lge/lgl55c/device_lgl55c.mk)

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
PRODUCT_LOCALES += mdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_lgl55c
PRODUCT_DEVICE := lgl55c
PRODUCT_BRAND := tracfone
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := LGL55C
