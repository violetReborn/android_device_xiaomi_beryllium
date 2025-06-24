#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Flags
AXION_MAINTAINER := Rve
AXION_PROCESSOR := Snapdragon_845

# Camera
PRODUCT_NO_CAMERA := false
AXION_CAMERA_REAR_INFO := 12,5
AXION_CAMERA_FRONT_INFO := 20

# CPU
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7
AXION_CPU_BG := 0-2
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-1
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-4
AXION_CPU_DISPLAY := 4-7
AXION_CPU_AUDIO := 0-3

# BCR
TARGET_PREBUILT_BCR := false

# Blur
TARGET_ENABLE_BLUR := false

# Bypass Charging
BYPASS_CHARGE_SUPPORTED := true

# LineageOS Prebuilts
ifneq ($(WITH_GMS),true)
TARGET_INCLUDES_LOS_PREBUILTS := true
endif

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    BuildFingerprint=Xiaomi/beryllium/beryllium:10/QKQ1.190828.002/V12.0.3.0.QEJMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
