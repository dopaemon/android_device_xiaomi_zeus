#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# LunarisAOSP
TARGET_DISABLE_EPPE := true
TARGET_OPTIMIZED_DEXOPT := true
WITH_BCR := true
WITH_GMS := true
TARGET_USES_CORE_GAPPS := true
TARGET_CUSTOM_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTED_REFRESH_RATES := 60,120

PRODUCT_NAME := lineage_zeus
PRODUCT_DEVICE := zeus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201122G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="zeus_global-user 15 AQ3A.250226.002 OS3.0.3.0.VLBMIXM release-keys" \
    BuildFingerprint=Xiaomi/zeus_global/zeus:15/AQ3A.250226.002/OS3.0.3.0.VLBMIXM:user/release-keys \
    DeviceProduct=zeus \
    SystemName=zeus_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
