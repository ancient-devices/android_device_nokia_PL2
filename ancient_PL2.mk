#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

#nherit from PL2 device
$(call inherit-product, device/nokia/PL2/device.mk)

#ancient os
ANCIENT_OFFICIAL=true
ANCIENT_GAPPS=true
ANCIENT_WEEABO=true

# Inherit some common aosp stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Asserts
TARGET_OTA_ASSERT_DEVICE := PL2,PL2_sprout,Plate2

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_NAME := ancient_PL2
PRODUCT_DEVICE := PL2
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 6.1

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=PL2_sprout \
    PRODUCT_NAME=Plate2_00WW \
    PRIVATE_BUILD_DESC="raven-user 12 SD1A.210817.036 7805805 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.017/7955197:user/release-keys
