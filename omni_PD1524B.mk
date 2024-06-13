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

# Inherit from PD1524B device
$(call inherit-product, device/vivo/PD1524B/device.mk)

PRODUCT_DEVICE := PD1524B
PRODUCT_NAME := omni_PD1524B
PRODUCT_BRAND := vivo
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_bbk6750_66_l-user 5.1 LMY47I 1476541533 release-keys"

BUILD_FINGERPRINT := vivo/PD1524B/PD1524B:5.1/LMY47I/1476541533:user/release-keys
