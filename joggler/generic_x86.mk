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

# Modified from build/target/product/generic_x86.mk

GENERIC_X86_DIR := device/common/generic_x86
GENERIC_X86_CONFIG_MK := $(GENERIC_X86_DIR)/BoardConfig.mk
GENERIC_X86_ANDROID_MK := $(GENERIC_X86_DIR)/AndroidBoard.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)

# Joggler packages
$(call inherit-product, $(LOCAL_PATH)/packages.mk)

# Generic x86 device configurations
$(call inherit-product, $(GENERIC_X86_DIR)/device.mk)
