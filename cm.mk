## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := alcatelc7
# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/yaris_xl/alcatelc7/device_alcatelc7.mk)
$(call inherit-product-if-exists, vendor/yaris_xl/alcatelc7/alcatelc7-vendor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := alcatelc7
PRODUCT_NAME := cm_alcatelc7
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := Alcatel POP C7
PRODUCT_MANUFACTURER := Alcatel
PRODUCT_GMS_CLIENTID_BASE := android-mediatek
