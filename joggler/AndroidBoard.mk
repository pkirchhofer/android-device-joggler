#
# Copyright (C) 2009-2011 The Android-x86 Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#

# the path of target's AndroidBoard.mk that includes this file
#TARGET_LOCAL_PATH := $(LOCAL_PATH)

LOCAL_PATH := $(call my-dir)

#TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/generic_defconfig
#TARGET_KERNEL_CONFIG := $(LOCAL_PATH)/config-3.5.0-android

include $(GENERIC_X86_ANDROID_MK)
