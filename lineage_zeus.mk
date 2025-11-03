#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Build
TARGET_DISABLE_EPPE := true
MISTOS_MAINTAINER := KernelPanix
WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mist.display=1440 x 3200, 120 hz
    ro.mist.battery=4600mah
    ro.mist.soc=Snapdragon® 8 Gen 1
    ro.mist.camera=50MP + 50MP + 50MP
    ro.mist.front=32MP
    ro.mist.platform=SM8450
    ro.mist.screen=6.73' AMOLED
    ro.mist.device.name=Xiaomi 12 Pro

PRODUCT_NAME := lineage_zeus
PRODUCT_DEVICE := zeus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201122G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="zeus_global-user 15 AQ3A.241006.001 OS2.0.205.0.VLBMIXM release-keys" \
    BuildFingerprint=Xiaomi/zeus_global/zeus:15/AQ3A.241006.001/OS2.0.205.0.VLBMIXM:user/release-keys \
    DeviceProduct=zeus \
    SystemName=zeus_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
