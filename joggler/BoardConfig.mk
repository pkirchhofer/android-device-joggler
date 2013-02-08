# BoardConfig.mk
#
# Product-specific compile-time definitions.

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_ARCH_VARIANT := x86-atom
TARGET_HAS_THIRD_PARTY_APPS := true
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/bzImage

# We don't have bluetooth, GPS or a camera
BOARD_HAVE_BLUETOOTH := false
BOARD_HAS_GPS_HARDWARE := false
USE_CAMERA_STUB := true

include $(GENERIC_X86_CONFIG_MK)
