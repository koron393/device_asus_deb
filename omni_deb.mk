
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit telephony stuff
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := omni_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7 2013 LTE
PRODUCT_MANUFACTURER := ASUS
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razorg/deb:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="razorg-user 4.4.4 KTU84P 1227136 release-keys"

# Kernel inline build
#TARGET_KERNEL_SOURCE := kernel/google/Glitch_Flo_AOSP
#TARGET_KERNEL_CONFIG := flo_defconfig
#TARGET_VARIANT_CONFIG := flo_defconfig
#TARGET_SELINUX_CONFIG := flo_defconfig
TARGET_PREBUILT_KERNEL := device/asus/deb/kernel

#MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/asus/flo/mr_init_devices.c
MR_RD_ADDR := 0x82500000
MR_DPI := xhdpi
MR_FSTAB := device/asus/deb/twrp.fstab
MR_KEXEC_MEM_MIN := 0x85000000
MR_INFOS := device/asus/flo/mrom_infos
MR_USE_QCOM_OVERLAY := true

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/deb/device.mk)
$(call inherit-product-if-exists, vendor/asus/deb/device-vendor.mk)
#$(call inherit-product-if-exists, vendor/qcom/proprietary/common/config/device-vendor.mk)
