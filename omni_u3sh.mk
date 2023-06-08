#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from u3sh device
$(call inherit-product, device/glocalme/u3sh/device.mk)

PRODUCT_DEVICE := u3sh
PRODUCT_NAME := omni_u3sh
PRODUCT_BRAND := qcom
PRODUCT_MODEL := U3SH
PRODUCT_MANUFACTURER := glocalme

PRODUCT_GMS_CLIENTID_BASE := android-glocalme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="u3sh-user 9 PKQ1.190616.001 108 release-keys"

BUILD_FINGERPRINT := qcom/u3sh/u3sh:9/PKQ1.190616.001/108:user/release-keys
