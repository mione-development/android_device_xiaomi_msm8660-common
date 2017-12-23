# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, device/xiaomi/msm8660-common/bcm_hcd.mk)

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8660-common/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/xiaomi/msm8660-common/prebuilt/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils \
    libdashplayer \
    libaudio-resampler

# Camera
PRODUCT_PACKAGES += \
    camera.msm8660 \
    camera.device@1.0-impl-legacy \
    android.hardware.camera.provider@2.4-impl-legacy

# GPS
PRODUCT_PACKAGES += \
    gps.mione

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    memtrack.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl


# Light
PRODUCT_PACKAGES += \
    lights.msm8660 \
    android.hardware.light@2.0-impl

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw \
    libOmxQcelp13Enc \
    libOmxEvrcEnc \
    libOmxAmrEnc \
    qcmediaplayer \
    android.hardware.drm@1.0-impl


PRODUCT_BOOT_JARS += \
    qcmediaplayer

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Camera wrapper
PRODUCT_PACKAGES += \
    camera.msm8660 \
    libshim_camera

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Net
PRODUCT_PACKAGES += \
    libnetcmdiface \
    crda

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    wificond

# Bluetooth
PRODUCT_PACKAGES += \
    bt_vendor.conf


# Bluetooth HAL
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Sensor
PRODUCT_PACKAGES += \
    sensors.msm8660 \
    android.hardware.sensors@1.0-impl

# Thermal HAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl

# Media configuration
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/xiaomi/msm8660-common/configs/media_codecs.xml:system/etc/media_codecs.xml \
    device/xiaomi/msm8660-common/configs/media_profiles.xml:system/etc/media_profiles.xml

# MSM8660 firmware
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8660-common/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/xiaomi/msm8660-common/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/xiaomi/msm8660-common/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw

# Thermal configuration
PRODUCT_COPY_FILES += \
    device/xiaomi/msm8660-common/configs/thermald.conf:system/etc/thermald.conf

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    ro.opengles.version=131072
