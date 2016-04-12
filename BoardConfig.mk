#
# Copyright (C) 2016 The CyanogenMod Project - MediaTek
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

# inherit from the proprietary version
-include vendor/yaris_xl/alcatelc7/BoardConfigVendor.mk

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/yaris_xl/alcatelc7/include

# Platform
TARGET_BOARD_PLATFORM := mt6582
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6582

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 642777088
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/yaris_xl/alcatelc7/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/yaris_xl/alcatelc7/bootimg.mk
BOARD_MKBOOTIMG_ARGS := --board 1456081306
BOARD_CUSTOM_BOOTIMG := true

TARGET_KMODULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := AlcatelC7,aurora

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
BOARD_EGL_CFG := device/yaris_xl/alcatelc7/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# FMRadio
MTK_FM_SUPPORT := yes
MTK_FM_RX_SUPPORT := yes
MTK_FM_CHIP := MT6627_FM
FM_LIB_BUILD_MT6620 := yes
FM_LIB_BUILD_MT6627 := yes
FM_LIB_BUILD_MT6628 := yes
FM_LIB_BUILD_MT6630 := yes

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# Offline charging
ADDITIONAL_DEFAULT_PROPERTIES += ro.mount.fs=EXT4

# RIL
BOARD_RIL_CLASS := ../../../device/yaris_xl/alcatelc7/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/yaris_xl/alcatelc7/bluetooth

# CWM
TARGET_RECOVERY_FSTAB := device/yaris_xl/alcatelc7/rootdir/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
#RECOVERY_VARIANT=twrp
DEVICE_RESOLUTION := 480x854
BOARD_HAS_LARGE_FILESYSTEM := true
TW_NO_USB_STORAGE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_REBOOT_BOOTLOADER := true
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INTERNAL_STORAGE_PATH := "/emmc"
TW_INTERNAL_STORAGE_MOUNT_POINT := "emmc"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

BOARD_SEPOLICY_DIRS := \
       device/yaris_xl/alcatelc7/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       netd.te \
       file_contexts
