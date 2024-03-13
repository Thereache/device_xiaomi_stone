#
# Copyright (C) 2022 The bananaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common banana stuff.
$(call inherit-product, vendor/banana/config/common.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Device props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_DEBLOAT := true

#Banana Flags
WITH_GAPPS := true
BANANA_MAINTAINER := Thereache

# Charging Animation
TARGET_USE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := banana_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
