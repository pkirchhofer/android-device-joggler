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

GENERIC_X86_DIR := device/generic/x86
GENERIC_X86_CONFIG_MK := $(GENERIC_X86_DIR)/BoardConfig.mk

# Get some sounds
$(call inherit-product, frameworks/base/data/sounds/AudioPackage6.mk)
#$(call inherit-product, frameworks/base/data/sounds/AllAudio.mk)

# Generic x86 device configurations
$(call inherit-product, $(LOCAL_PATH)/generic_x86_device.mk)

# Get a list of languages.
$(call inherit-product,$(SRC_TARGET_DIR)/product/locales_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)

# Joggler packages
$(call inherit-product, $(LOCAL_PATH)/packages.mk)

PRODUCT_NAME := joggler
PRODUCT_DEVICE := joggler
PRODUCT_MANUFACTURER := OpenPeak
PRODUCT_MODEL := O2 Joggler
PRODUCT_BRAND := O2
PRODUCT_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays

DEVICE_PACKAGE_OVERLAYS := frameworks/webview/chromium/overlay

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.arch=x86 \
    ro.rtc_local_time=1 \
    debug.logcat=0 \
    debug.adbd=1 \
    debug.sf.nobootanimation=0 \
    ro.sf.lcd_density=120 \
    persist.sys.root_access=3 \

# Enable Low Ram Device flag
PRODUCT_PROPERTY_OVERRIDES += ro.config.low_ram=true

# Copy firmware files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/joggler-stac9202.patch:system/lib/firmware/joggler-stac9202.patch \
    /lib/firmware/rt2870.bin:system/lib/firmware/rt2870.bin \

#$(call inherit-product, frameworks/webview/chromium/chromium.mk)
