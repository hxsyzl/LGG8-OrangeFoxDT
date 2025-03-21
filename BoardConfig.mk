DEVICE_PATH := device/lge/alphalm

# For building with minimal mainfest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true


# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a9

TARGET_BOARD_SUFFIX := _64 #Add for 64bit soc
TARGET_USES_64_BIT_BINDER := true #Add for 64bit system

# APEX
#OVERRIDE_TARGET_FLATTEN_APEX := true #If device does not support updatable APEX Add this to flat APEX

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msmnile
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Platform
TARGET_BOARD_PLATFORM := msmnile

# Display
TARGET_SCREEN_DENSITY := 563.32 #Screen DPI/PPI

# Kernel
#BOARD_BOOTIMG_HEADER_VERSION := 2
#BOARD_KERNEL_BASE := 0x00000000
#BOARD_KERNEL_CMDLINE := androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 androidboot.usbcontroller=a600000.dwc3 kpti=off androidboot.vendor.lge.arb_version=0 androidboot.hardware=alphalm buildvariant=user
#BOARD_KERNEL_PAGESIZE := 4096
#BOARD_RAMDISK_OFFSET := 0x01000000
#BOARD_KERNEL_TAGS_OFFSET :=0x00000100
#BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
#BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_KERNEL_IMAGE_NAME := Image
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#BOARD_KERNEL_SEPARATED_DTBO := true
#TARGET_KERNEL_CONFIG := alphalm_defconfig
#TARGET_KERNEL_SOURCE := kernel/lge/alphalm

# Kernel - prebuilt
#TARGET_FORCE_PREBUILT_KERNEL := false #True for prebuilt kernel
#ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
BOARD_KERNEL_CMDLINE := androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7 androidboot.usbcontroller=a600000.dwc3 kpti=off androidboot.vendor.lge.arb_version=0 androidboot.hardware=alphalm buildvariant=user
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_BOOT_HEADER_VERSION := 2
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_KERNEL_IMAGE_NAME := kernel
#endif

# Android Verified Boot
BOARD_AVB_ENABLE := true #True to enable AVB
#BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
#BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
#BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
#BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
#BOARD_AVB_VBMETA_SYSTEM := product system
#BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
#BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Metadata
BOARD_USES_METADATA_PARTITION := true #For userdata encryption

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608

# Dynamic Partition
#BOARD_SUPER_PARTITION_SIZE := 10200547328
#BOARD_SUPER_PARTITION_GROUPS := lge_dynamic_partitions
#BOARD_LGE_DYNAMIC_PARTITIONS_SIZE := 10200547328
#BOARD_LGE_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true #True for ext4
TARGET_USERIMAGES_USE_F2FS := false #False for ext4
TARGET_COPY_OUT_VENDOR := vendor

# Fstab
#TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# Properties
#TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
#TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
#TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
#TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
#TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Recovery
#BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.alphalm
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
#TARGET_USERIMAGES_USE_EXT4 := true #True for ext4
#TARGET_USERIMAGES_USE_F2FS := false #False for ext4

# Security patch level
#VENDOR_SECURITY_PATCH := 2022-12-01

# VINTF
#DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary files
#include vendor/lge/alphalm/BoardConfigVendor.mk

# TWRP Configuration
TW_THEME := portrait_hdpi
#TW_BRIGHTNESS_PATH := 
TW_MAX_BRIGHTNESS := 255
#TW_DEFAULT_BRIGHTNESS := 155
TW_DEFAULT_LANGUAGE := zh_CN
TW_EXTRA_LANGUAGES := ture
TW_IGNORE_MISC_WIPE_DATA := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_EXFAT_FUSE := true
TW_INCLUDE_CRYPTO := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw

#TWRP Debug
TW_USE_TOOLBOX := true 
TWRP_INCLUDE_LOGCAT := true 
TARGET_USES_LOGD := true 
