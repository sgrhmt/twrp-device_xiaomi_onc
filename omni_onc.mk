#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from onc device
$(call inherit-product, device/xiaomi/onc/device.mk)

PRODUCT_DEVICE := onc
PRODUCT_NAME := omni_onc
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="onc-user 10 QKQ1.191008.001 V12.5.3.0.QFLCNXM release-keys"

BUILD_FINGERPRINT := xiaomi/onc/onc:10/QKQ1.191008.001/V12.5.3.0.QFLCNXM:user/release-keys
