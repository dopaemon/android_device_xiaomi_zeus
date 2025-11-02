#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from zeus device
$(call inherit-product, device/xiaomi/zeus/device.mk)

# Inherit from common voltage configuration
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Voltage Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
VOLTAGE_BUILD_TYPE := UNOFFICIAL
EXTRA_UDFPS_ANIMATIONS := true

# Boost Framework
VOLTAGE_CPU_SMALL_CORES := 0,1,2
VOLTAGE_CPU_BIG_CORES   := 3,4,5,6,7
VOLTAGE_ALL_CORES       := 0-7
VOLTAGE_CPU_SYS_BG      := 0-3
VOLTAGE_CPU_BG          := 0-2
VOLTAGE_CPU_FG          := 0-5
VOLTAGE_CPU_LIMIT_BG    := 0-1
VOLTAGE_CPU_LIMIT_UI    := 0-2
VOLTAGE_CPU_DISPLAY     := 0-5

PRODUCT_NAME := voltage_zeus
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
