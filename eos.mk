# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Inherit AOSP device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

# Inherit common product files.
$(call inherit-product, vendor/eos/config/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/eos/config/common_full_tablet_wifionly.mk)

# Inherit telephony config.
$(call inherit-product, vendor/eos/config/telephony.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := deb
PRODUCT_NAME := eos_deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

# Build the kernel
TARGET_KERNEL_SOURCE := kernel/asus/flo
TARGET_KERNEL_CONFIG := flo_defconfig
TARGET_VARIANT_CONFIG := flo_defconfig
TARGET_SELINUX_CONFIG := flo_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.9

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razorg/deb:4.4.3/KTU84L/1148727:user/release-keys PRIVATE_BUILD_DESC="razorg-user 4.4.3 KTU84L 1148727 release-keys"
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME="razor" BUILD_FINGERPRINT="google/razor/flo:5.0/LRX21T/1576899:user/release-keys" PRIVATE_BUILD_DESC="razor-user 5.0 LRX21T 1576899 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
