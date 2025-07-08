#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)


# Bypass Charging
BYPASS_CHARGE_SUPPORTED := true

#GMS
WITH_GMS := true
WITH_GAPPS := true

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
USE_LEGACY_BOOTANIMATION := true

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Maintainer Name
INFINITY_MAINTAINER := "Anirban"

# Whether the compiled package ships more (mostly unimportant) Google Apps:
TARGET_SHIPS_FULL_GAPPS := false

# Whether the compiled shipped gapps package uses Google Dialer:
TARGET_SHIPS_GOOGLE_DIALER := false 

# Whether the compiled package ships Motorola Calculator:
USE_MOTO_CALCULATOR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    BuildFingerprint=Xiaomi/beryllium/beryllium:10/QKQ1.190828.002/V12.0.3.0.QEJMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
