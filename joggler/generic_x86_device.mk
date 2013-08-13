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

# Include generic x86 device configuration
#
# Modified from device/common/generic_x86/device.mk

PRODUCT_PROPERTY_OVERRIDES := \
    ro.arch=x86 \

# Files for init system
PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/init.rc:root/init.rc \
    $(LOCAL_PATH)/init.sh:system/etc/init.sh \
    $(LOCAL_PATH)/init.$(TARGET_PRODUCT).rc:root/init.$(TARGET_PRODUCT).rc \

# Other files
PRODUCT_COPY_FILES += \
    $(GENERIC_X86_DIR)/excluded-input-devices.xml:system/etc/excluded-input-devices.xml \
    device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml \
    $(GENERIC_X86_DIR)/GenericTouch.idc:system/usr/idc/GenericTouch.idc \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \

PRODUCT_LOCALES := en_US

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlays

# Get the alsa files
$(call inherit-product-if-exists,hardware/libaudio/alsa.mk)

# Get GPS configuration
$(call inherit-product-if-exists,device/common/gps/gps_as.mk)

# Get the hardware acceleration libraries
$(call inherit-product-if-exists,device/common/gpu/gpu_mesa.mk)

# Get some sounds
$(call inherit-product-if-exists,frameworks/base/data/sounds/AllAudio.mk)

# Get a list of languages.
$(call inherit-product-if-exists,$(SRC_TARGET_DIR)/product/locales_full.mk)

# Get tablet dalvik parameters
$(call inherit-product-if-exists,frameworks/base/build/tablet-dalvik-heap.mk)

# Get the TTS language packs
$(call inherit-product-if-exists,external/svox/pico/lang/all_pico_languages.mk)

# Get GMS
$(call inherit-product-if-exists,vendor/google/products/gms.mk)
