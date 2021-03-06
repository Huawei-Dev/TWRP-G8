#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2016 @surdu_petru
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

LOCAL_PATH := device/huawei/rio

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

TARGET_CPU_CORTEX_A53 := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

TARGET_KERNEL_SOURCE := kernel/huawei/msm8939
TARGET_KERNEL_CONFIG := cm_rio_defconfig

# Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm8916
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_LIBINIT_MSM8916_DEFINES_FILE := $(LOCAL_PATH)/init/init_rio.cpp

# Malloc
#MALLOC_IMPL := dlmalloc

# Assert
TARGET_OTA_ASSERT_DEVICE := rio,RIO-L01,hwRIO-L01,RIO-L02,hwRIO-L02,RIO-L03,hwRIO-L03,RIO-AL00,hwRIO-AL00,RIO-CL00,hwRIO-CL00,RIO-TL00,hwRIO-TL00

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27128740864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 67108864

# TWRP
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi

TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

TW_INCLUDE_CRYPTO := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SUPPRESS_EMMC_WIPE := true

TW_NO_USB_STORAGE := true
TW_EXCLUDE_SUPERSU := true

TW_INPUT_BLACKLIST := "accelerometer"

TARGET_RECOVERY_FORCE_PIXEL_FORMAT := RGB_565
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
TARGET_RECOVERY_DEVICE_MODULES := libinit_msm8916
