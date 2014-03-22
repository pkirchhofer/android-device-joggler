#
# Copyright 2013 The Android Open-Source Project
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

LOCAL_PATH := device/joggler/joggler

TARGET_NO_KERNEL := true
TARGET_ARCH_VARIANT := x86-atom
TARGET_CPU_VARIANT := generic
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/bzImage
#TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/kernel.config

# We don't have GPS or a camera
BOARD_USES_GENERIC_AUDIO := true
BOARD_HAS_GPS_HARDWARE := false
USE_CAMERA_STUB := true
BOARD_GPU_DRIVERS :=

WIFI_DRIVER_MODULE_PATH :=

include $(GENERIC_X86_CONFIG_MK)

# We also don't have Bluetooth
BOARD_HAVE_BLUETOOTH := false
BLUETOOTH_HCI_USE_USB := false
BOARD_HAVE_BLUETOOTH_BCM := false
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/x86/bluetooth

BOARD_USE_LIBVA_INTEL_DRIVER := false
BOARD_USE_LIBVA := false
BOARD_USE_LIBMIX := false
BOARD_USES_WRS_OMXIL_CORE := false
USE_INTEL_OMX_COMPONENTS := false

# Override buggy automatic detection of system image size
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400 # 400 MB
BOARD_FLASH_BLOCK_SIZE := 0
