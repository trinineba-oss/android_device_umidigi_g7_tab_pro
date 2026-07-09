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

DEVICE_PATH := device/umidigi/g7_tab_pro

# For building with OmniROM / TWRP Minimal Manifest
TARGET_BOARD_PLATFORM := mt6789
TARGET_BOOTLOADER_BOARD_NAME := mt6789

# Architecture & CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel configs & Headers
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version 4
TARGET_BOARD_SUFFIX := _sz
BOARD_USES_MTK_HARDWARE := true

# Recovery Target partition settings
# Target: Recovery inside vendor_boot (ramdisk built into vendor_boot)
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_COPY_STATE_TO_VENDOR_BOOT := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
BOARD_HAS_NO_RECOVERY_PARTITION := true

# Display & UI Settings
TARGET_SCREEN_DENSITY := 280
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1200

# Encryption & Decryption (FBE)
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
TW_LOAD_KEYMASTER_SERVICES := true
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-05

# GSI Flashing & Read-Write Support
TW_ALLOW_RECOVERY_WRITE_TO_SYSTEM := true
BOARD_EXT4_SHARE_DUP_BLOCKS := false
BOARD_HAS_LARGE_SYSTEM_SUPER_PARTITIONS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Dynamic / Super Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPER_PARTITION_GROUPS := umidigi_dynamic_partitions
BOARD_UMIDIGI_DYNAMIC_PARTITIONS_SIZE := 9126805504
BOARD_UMIDIGI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product system_ext

# TWRP Specific config flags
TW_EXCLUDE_APEX := false
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# MediaTek Helio G99 (MT6789) special flags
BOARD_HAS_MTK_HARDWARE := true
BOARD_RECOVERY_MEMTEST := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_USE_EXTERNAL_STORAGE := true
TW_NO_BIND_SYSTEM := true
TW_LOAD_KEYMASTER_SERVICES := true
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := umidigi_dynamic_partitions
BOARD_UMIDIGI_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_UMIDIGI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product vendor_dlkm odm_dlkm
