#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from device
$(call inherit-product, device/intel/barrytrail/device.mk)

PRODUCT_NAME := lineage_barrytrail
PRODUCT_DEVICE := barrytrail
PRODUCT_BRAND := Intel
PRODUCT_MANUFACTURER := Intel
PRODUCT_MODEL := Baytrail and Cherrytrail

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)

# Workaround build fingerprint too long
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="barrytrail-eng 14 AP2A.240705.005 0 test-keys"

BUILD_FINGERPRINT := Intel/barrytrail/barrytrail:14/AP2A.240705.005/0:eng/test-keys
