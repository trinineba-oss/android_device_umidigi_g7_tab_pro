#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
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

# API Level / Security Patch (CRITICAL - must match BoardConfig.mk!)
PRODUCT_SHIPPING_API_LEVEL := 33
BOARD_SYSTEMSDK_VERSIONS := 33
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-05

# Inherit from core AOSP configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from custom device configuration
$(call inherit-product, device/umidigi/g7_tab_pro/device.mk)

# Inherit custom TWRP configurations
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifiers
PRODUCT_DEVICE := g7_tab_pro
PRODUCT_NAME := omni_g7_tab_pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := G7 Tab Pro
PRODUCT_MANUFACTURER := UMIDIGI
PRODUCT_RELEASE_NAME := UMIDIGI G7 Tab Pro
