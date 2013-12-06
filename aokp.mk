# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit AOSP device configuration for odin
$(call inherit-product-if-exists, device/sony/odin/full_odin.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503_1271-0336 BUILD_FINGERPRINT=Sony/C6503_1271-0336/C6503:4.1.2/10.1.A.1.434/Tfp_rw:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.1.2 10.1.A.1.434 Tfp_rw test-keys"

#skip asserts for now
TARGET_OTA_ASSERT_SKIP := true

