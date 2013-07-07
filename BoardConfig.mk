USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/lgl55c/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := lge_gelato
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

DEVICE_RESOLUTION := 320x480

# Kernel
BOARD_KERNEL_CMDLINE := mem=477M console=ttyMSM2,115200n8 androidboot.hardware=gelato
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048

# Fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0aa00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0d520000
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_PREBUILT_KERNEL := device/lge/lgl55c/kernel
BOARD_CUSTOM_GRAPHICS:= ../../../device/lge/lgl55c/recovery/graphics.c
TARGET_RECOVERY_INITRC := device/lge/lgl55c/recovery/recovery.rc
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP
TW_NO_REBOOT_BOOTLOADER := true
