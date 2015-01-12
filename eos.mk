# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Euphoria stuff.
$(call inherit-product, vendor/eos/config/common_full_tablet_wifionly.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/eos/config/telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/deb/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := eos_deb
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razorg/deb:5.0.2/LRX22G/1537103:user/release-keys PRIVATE_BUILD_DESC="razorg-user 5.0.2 LRX22G 1537103 release-keys"

# TouchControl package.
#PRODUCT_PACKAGES += \
#    TouchControl

# Dialer package.
PRODUCT_PACKAGES += \
    Dialer

# Screen recorder package and lib
#PRODUCT_PACKAGES += \
#    ScreenRecorder \
#    libscreenrecorder

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip
