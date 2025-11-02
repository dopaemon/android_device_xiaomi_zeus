#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionOS
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 50,50,50
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := KernelPanix
AXION_PROCESSOR := Snapdragon_8_Gen_1
BYPASS_CHARGE_SUPPORTED ?= false
HBM_SUPPORTED := false
TARGET_INCLUDE_VIPERFX := true
TORCH_STR_SUPPORTED := true

PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.perf.scroll_opt = true \
    persist.sys.perf.scroll_opt.heavy_app = 2

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
