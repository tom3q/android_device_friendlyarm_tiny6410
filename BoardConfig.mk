# Copyright (C) 2009 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Set this up here so that BoardVendorConfig.mk can override it

# Audio
BOARD_USES_GENERIC_AUDIO := false

# RIL
BOARD_USES_LIBSECRIL_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/friendlyarm/tiny6410/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := s3c6410
TARGET_BOOTLOADER_BOARD_NAME := tiny6410
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_ARCH_VARIANT_CPU := arm1176jzf-s

# Package contents
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_PREBUILT_KERNEL := device/friendlyarm/tiny6410/kernel.dummy

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
BOARD_PROVIDES_BOOTMODE := true

# Recovery
TARGET_RECOVERY_INITRC := device/friendlyarm/tiny6410/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/friendlyarm/tiny6410/recovery/recovery_ui.c

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/friendlyarm/tiny6410/releasetools/tiny6410_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/friendlyarm/tiny6410/releasetools/tiny6410_img_from_target_files

# Camera
USE_CAMERA_STUB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := false

# Video Devices
BOARD_USES_OVERLAY := true
BOARD_CAMERA_DEVICE := /dev/video0

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 234881024
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true

# Misc
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BUILD_WITH_FULL_STAGEFRIGHT := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# 3D
BOARD_NO_RGBX_8888 := true
BOARD_USES_HGL := true
BOARD_EGL_CFG := device/friendlyarm/tiny6410/egl.cfg
BOARD_NO_PAGE_FLIPPING := false
BOARD_NO_32BPP := false
