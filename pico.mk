# Copyright (C) 2011 The Android Open Source Project
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

# proprietary side of the device
# Inherit from those products. Most specific first

# We havent decided what props we need,yet
# $(call inherit-product-if-exists, vendor/htc/pico/pico-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/pico/overlay

# Customization (# minicm9 theme, CM File Manager, bootanimation)
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/app/MiniCM9.apk:system/app/MiniCM9.apk \
    device/htc/pico/prebuilt/app/CMFileManager-20130718-c3f2aac608.apk:system/app/CMFileManager.apk \
    device/htc/pico/prebuilt/media/320.zip:system/media/bootanimation.zip

# Extra prebuilt and init files
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    device/htc/pico/prebuilt/etc/init.d/04modules:system/etc/init.d/04modules \
    device/htc/pico/prebuilt/xbin/zipalign:system/xbin/zipalign

# Extra Cyanogen vendor files
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml    

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc \
    libOmxH264Dec \
    libOmxMpeg4Dec
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
    libQcomUI
    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a\
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.msm7x27a \
    sensors.msm7x27a \
    gps.pico
    
# Camera
PRODUCT_PACKAGES += \
    camera.default    
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    rzscontrol \
    hostap \
    screencap

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug

# for Compcache
PRODUCT_COPY_FILES += \
        device/htc/pico/prebuilt/xbin/rzscontrol:system/xbin/rzscontrol

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Init
PRODUCT_COPY_FILES += \
    device/htc/pico/ramdisk/init.pico.rc:root/init.pico.rc \
    device/htc/pico/ramdisk/ueventd.pico.rc:root/ueventd.pico.rc \
    device/htc/pico/ramdisk/init.pico.usb.rc:root/init.pico.usb.rc
    
# Camera
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/hw/camera.default.so:system/lib/hw/camera.default.so \
    vendor/htc/pico/proprietary/lib/liboemcamera.so:system/lib/liboemcamera.so \
    vendor/htc/pico/proprietary/lib/libmmipl.so:system/lib/libmmipl.so \
    vendor/htc/pico/proprietary/lib/libmmjpeg.so:system/lib/libmmjpeg.so \
    vendor/htc/pico/proprietary/lib/libcameraface.so:system/lib/libcameraface.so \
    vendor/htc/pico/proprietary/lib/libcamerapp.so:system/lib/libcamerapp.so \
    vendor/htc/pico/proprietary/lib/libOlaEngine.so:system/lib/libOlaEngine.so \
    vendor/htc/pico/proprietary/lib/libchromatix_mt9t013_default_video.so:system/lib/libchromatix_mt9t013_default_video.so \
    vendor/htc/pico/proprietary/lib/libchromatix_mt9t013_preview.so:system/lib/libchromatix_mt9t013_preview.so \
    vendor/htc/pico/proprietary/bin/awb_camera:system/bin/awb_camera \
    vendor/htc/pico/proprietary/bin/lsc_camera:system/bin/lsc_camera \
    vendor/htc/pico/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    device/htc/pico/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml
    
# OMX
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/libmm-adspsvc.so:system/lib/libmm-adspsvc.so \
    vendor/htc/pico/proprietary/lib/libOmxH264Dec.so:system/lib/libOmxH264Dec.so \
    vendor/htc/pico/proprietary/lib/libOmxMpeg4Dec.so:system/lib/libOmxMpeg4Dec.so \
    vendor/htc/pico/proprietary/lib/libOmxVidEnc.so:system/lib/libOmxVidEnc.so \
    vendor/htc/pico/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    vendor/htc/pico/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    vendor/htc/pico/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    vendor/htc/pico/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so
    
# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 

PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Releasetools
PRODUCT_COPY_FILES += \
     device/htc/pico/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/vold.fstab:system/etc/vold.fstab 

# Prebuilt Modules
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
    device/htc/pico/prebuilt/kineto_gan.ko:system/lib/modules/kineto_gan.ko \
    device/htc/pico/prebuilt/dal_remotetest.ko:system/lib/modules/dal_remotetest.ko \
    device/htc/pico/prebuilt/scsi_wait_scan.ko:system/lib/modules/scsi_wait_system.ko

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/pico/prebuilt/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/pico/prebuilt/etc/wifi/hostapd.conf:system/etc/wifi/hostapd.conf \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/pico/prebuilt/etc/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin
    
# Audio
# Need all audio filters
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/pico/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/pico/prebuilt/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/pico/prebuilt/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/pico/prebuilt/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/pico/prebuilt/etc/AudioFilter_HP.csv:system/etc/AudioFilter_HP.csv \
    device/htc/pico/prebuilt/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/htc/pico/prebuilt/lib/libhtc_acoustic.so:system/lib/libhtc_acoustic.so
    

# Sensors
PRODUCT_COPY_FILES += \
    vendor/htc/pico/proprietary/lib/hw/sensors.pico.so:system/lib/hw/sensors.pico.so
    
# GPS
# Don't work on 4.0.4 because from 2.3.5! You need to compile it with yourself
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/htc/pico/prebuilt/lib/hw/gps.pico.so:system/lib/hw/gps.pico.so

# 3D(ICS Blobs)
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/pico/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    vendor/htc/pico/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    vendor/htc/pico/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    vendor/htc/pico/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    vendor/htc/pico/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    vendor/htc/pico/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    vendor/htc/pico/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    vendor/htc/pico/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    vendor/htc/pico/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    vendor/htc/pico/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so 
    
    
# RIL
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/lib/libhtc_ril.so:system/lib/libhtc_ril.so \
    device/htc/pico/prebuilt/lib/libqc-opt.so:system/lib/libqc-opt.so

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/pico/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg

# Bluetooth
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd:system/etc/firmware/BCM4330B1_002.001.003.0221.0228.hcd

# charger images
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/media/zchgd/batt_0.rle:system/media/zchgd/batt_0.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_100.rle:system/media/zchgd/batt_100.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_10.rle:system/media/zchgd/batt_10.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_20.rle:system/media/zchgd/batt_20.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_30.rle:system/media/zchgd/batt_30.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_40.rle:system/media/zchgd/batt_40.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_50.rle:system/media/zchgd/batt_50.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_5.rle:system/media/zchgd/batt_5.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_60.rle:system/media/zchgd/batt_60.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_70.rle:system/media/zchgd/batt_70.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_80.rle:system/media/zchgd/batt_80.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_90.rle:system/media/zchgd/batt_90.rle \
    device/htc/pico/prebuilt/media/zchgd/batt_95.rle:system/media/zchgd/batt_95.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_00.rle:system/media/zchgd/charging_00.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_01.rle:system/media/zchgd/charging_01.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_02.rle:system/media/zchgd/charging_02.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_03.rle:system/media/zchgd/charging_03.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_04.rle:system/media/zchgd/charging_04.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_05.rle:system/media/zchgd/charging_05.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_06.rle:system/media/zchgd/charging_06.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_07.rle:system/media/zchgd/charging_07.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_08.rle:system/media/zchgd/charging_08.rle \
    device/htc/pico/prebuilt/media/zchgd/charging_09.rle:system/media/zchgd/charging_09.rle \
    device/htc/pico/prebuilt/media/zchgd/error.rle:system/media/zchgd/error.rle \
    device/htc/pico/prebuilt/bin/charging:system/bin/charging \
    device/htc/pico/prebuilt/bin/zchgd:system/bin/zchgd

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/pico/prebuilt/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/pico-keypad.kcm.bin:system/usr/keychars/pico-keypad.kcm.bin \
    device/htc/pico/prebuilt/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/pico/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pico/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/pico/prebuilt/usr/keylayout/BT_HID.kl:system/usr/keylayout/BT_HID.kl \
    device/htc/pico/prebuilt/usr/keylayout/pico-keypad.kl:system/usr/keylayout/pico-keypad.kl \
    device/htc/pico/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pico/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/pico/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/pico/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    device/htc/pico/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Prebuilt apps
PRODUCT_COPY_FILES += \
    vendor/prebuilt/apps/Apollo_for_2.3.3-4.0.4.apk:system/app/Apollo.apk \
    vendor/prebuilt/apps/com.android2.calculator3.apk:system/app/Calculator.apk \
    vendor/prebuilt/apps/com.klinker.deskclock.apk:system/app/DeskClock.apk
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=50 \
    persist.service.zram=1 \
    ro.zram.default=18 \
    ro.product.camera=pico \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y
    
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
