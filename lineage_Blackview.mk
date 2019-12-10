# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Blackview device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := blackview
PRODUCT_DEVICE := Blackview
PRODUCT_MANUFACTURER := blackview
PRODUCT_NAME := lineage_Blackview
PRODUCT_MODEL := BV9600Pro

PRODUCT_GMS_CLIENTID_BASE := android-blackview
TARGET_VENDOR := blackview
TARGET_VENDOR_PRODUCT_NAME := Blackview
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k71v1_64_bsp-user 9 PPR1.180610.011 eng.releas.20190530.193148 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Blackview/BV9600Pro_EEA/Blackview:9/PPR1.180610.011/1558005169:user/release-keys
