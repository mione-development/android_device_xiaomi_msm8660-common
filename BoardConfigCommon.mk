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

COMMON_PATH := device/xiaomi/msm8660-common
BOARD_VENDOR := xiaomi

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := scorpion
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LINKER_NON_PIE_EXECUTABLES_HEADER_DIR := $(COMMON_PATH)/include

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_GLOBAL_CFLAGS += -DQCOM_HARDWARE
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# QCOM BSP
TARGET_USES_QCOM_BSP := true
BOARD_GLOBAL_CFLAGS += -DQCOM_BSP

# Recovery
USE_SET_METADATA := false

# Graphics
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_USE_MHEAP_SCREENSHOT := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_NO_HW_VSYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := device/xiaomi/msm8660-common/configs/egl.cfg
BOARD_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
BOARD_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_BSP_CAMERA_ABI_HACK

# Audio
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
#TARGET_DISABLE_ARM_PIE := true
BOARD_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
BOARD_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW
BOARD_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Camera wrapper
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
BOARD_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# HIDL
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/manifest.xml

# Misc
BOARD_USES_LEGACY_MMAP := true

# SELinux
# include device/qcom/sepolicy/sepolicy.mk

#BOARD_SEPOLICY_DIRS += \
#    $(COMMON_PATH)/sepolicy

# Filesystem
#BOARD_VOLD_MAX_PARTITIONS := 36

# FM Radio
#BOARD_HAVE_QCOM_FM := true
#BOARD_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# GPS
USE_DEVICE_SPECIFIC_GPS := true
USE_DEVICE_SPECIFIC_LOC_API := true
BOARD_USES_QCOM_GPS := true
TARGET_GPS_HAL_PATH := $(COMMON_PATH)/gps
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := mione
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
