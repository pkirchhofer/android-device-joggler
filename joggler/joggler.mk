#
# Copyright (C) 2011 The Android-x86 Open Source Project
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

GENERIC_X86_DIR := device/common/generic_x86
GENERIC_X86_CONFIG_MK := $(GENERIC_X86_DIR)/BoardConfig.mk
GENERIC_X86_ANDROID_MK := $(GENERIC_X86_DIR)/AndroidBoard.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)

# Joggler packages
$(call inherit-product, $(LOCAL_PATH)/packages.mk)

# Generic x86 device configurations
$(call inherit-product, $(LOCAL_PATH)/generic_x86_device.mk)

PRODUCT_NAME := joggler
PRODUCT_DEVICE := joggler
PRODUCT_MANUFACTURER := OpenPeak
PRODUCT_MODEL := O2 Joggler
PRODUCT_BRAND := O2
PRODUCT_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.logcat=0 \
    debug.adbd=1 \
    debug.sf.nobootanimation=0 \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/joggler-sound.patch:system/lib/firmware/joggler-sound.patch
