#
# Copyright (C) 2012 The Android-x86 Open Source Project
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

# Common packages for Android-x86 platform.

PRODUCT_PACKAGES := \
    camera.x86 \
    chat \
    com.android.future.usb.accessory \
    drmserver \
    eject \
    gps.default \
    hwcomposer.x86 \
    icu.dat \
    io_switch \
    lights.default \
    make_ext4fs \
    powerbtnd \
    su \

# Removed packages:
#    BasicSmsReceiver \
#    Development \
#    Galaxy4 \
#    GlobalTime \
#    HoloSpiralWallpaper \
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    MagicSmokeWallpapers \
#    NotePad \
#    PhaseBeam \
#    Provision \
#    RSSReader \
#    VisualizationWallpapers \

#PRODUCT_PACKAGES += \
#    badblocks \
#    e2fsck \
#    mke2fs \
#    resize2fs \
#    tune2fs \

# Third party apps
#PRODUCT_PACKAGES += \
#    AndroidTerm \
#    FileManager \
#    LIME \

# Additional packages
PRODUCT_PACKAGES += \
    Gallery \
    Launcher2 \

# Removed packages:
#   Trebuchet \
