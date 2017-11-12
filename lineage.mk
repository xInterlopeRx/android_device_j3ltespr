# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/j3ltespr/full_j3ltespr.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=j3ltespr TARGET_DEVICE=j3ltespr

PRODUCT_NAME := lineage_j3ltespr
