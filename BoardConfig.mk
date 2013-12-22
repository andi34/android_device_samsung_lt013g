#
# Copyright (C) 2012 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/lt01-common/BoardCommonConfig.mk

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := xmm6262

TARGET_SPECIFIC_HEADER_PATH := device/samsung/lt013g/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/lt013g/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/lt01
TARGET_KERNEL_CONFIG := cyanogenmod_lt013g_defconfig

# assert
TARGET_OTA_ASSERT_DEVICE := lt013g,lt013gxx,SM-T311,lt01wifi,lt01wifixx,lt01wifiue,SM-T310

# inherit from the proprietary version
-include vendor/samsung/lt013g/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/lt013g/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2

# TWRP
DEVICE_RESOLUTION := 800x1280
HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_FLASH_FROM_STORAGE := true
