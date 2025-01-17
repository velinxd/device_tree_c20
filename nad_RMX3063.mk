#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX3063/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/nusantara/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nad_RMX3063
PRODUCT_DEVICE := RMX3063
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme C20
PRODUCT_MANUFACTURER := realme

# NusantaraProject stuff
NAD_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 720

# Build info
BUILD_FINGERPRINT := "google/redfin/redfin:12/SP1A.211105.003/7757856:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3063 \
    PRODUCT_NAME=RMX3063 \
    PRIVATE_BUILD_DESC="full_oppo6765-user 10 QP1A.190711.020 bedd37e98646d3a1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Time
# LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
