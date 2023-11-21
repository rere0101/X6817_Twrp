#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.

# Inherit from lion device
$(call inherit-product, device/infinix/X6817/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X6817
PRODUCT_NAME := twrp_X6817
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6817
PRODUCT_MANUFACTURER := infinix
