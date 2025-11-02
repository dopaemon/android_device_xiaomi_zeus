#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
$(call inherit-product, device/xiaomi/sm8450-common/common.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/zeus/zeus-vendor.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/mixer_paths_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/resourcemanager_waipio_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_taro/resourcemanager_waipio_mtp.xml \
    $(LOCAL_PATH)/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# Miui Camera for cupid
$(call inherit-product, device/xiaomi/miuicamera-cupid/device.mk)

# RisingOS
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 8 Gen 1" \
    RisingMaintainer="KernelPanix"

# Overlay
PRODUCT_PACKAGES += \
    ApertureResZeus \
    FrameworksResZeus \
    LineageResZeus \
    NfcResZeus \
    SettingsProviderResZeus \
    SettingsResZeus \
    SystemUIResZeus \
    WifiResZeus

# Powershare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare-service.default

# Sensors
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_taro/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/sku_taro/android.hardware.sensor.hifi_sensors.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
