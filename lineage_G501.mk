#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from v7101o device
$(call inherit-product, device/generalmobile/G501/device.mk)

# Inherit some common LineageOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_G501
PRODUCT_DEVICE := G501
PRODUCT_BRAND := GM
PRODUCT_MODEL := G501
PRODUCT_MANUFACTURER := General Mobile
    
PRODUCT_GMS_CLIENTID_BASE := android-telpa-trev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=G501_S
