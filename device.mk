LOCAL_PATH := device/lge/alphalm
# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

#AB_OTA_UPDATER := true
#AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    system \
    vendor \
    vbmeta \
    product \
    odm \
    system_ext \
    vendor_boot \
    vbmeta_system \
    vbmeta_vendor

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API levels
PRODUCT_SHIPPING_API_LEVEL := 28

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.crda.sh \
    init.lge.forced_usb_path_change.sh \
    init.lge.usb.default.sh \
    init.lge.usb.diag.sh \
    init.lge.usb.lao.sh \
    init.lge.usb.sh \
    init.lge.zramswap.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.devstart.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qti.qcv.sh \
    init.sm8150.crash.sh \
    modem_log_postproc.sh \
    modem_log_precond.sh \
    qca6234-service.sh \
    wifi_runtime_conf.sh \

PRODUCT_PACKAGES += \
    fstab.alphalm \
    init.alphalm.rc \
    init.alphalm_vendor.rc \
    init.lge.display.rc \
    init.lge.fingerprints.rc \
    init.lge.power.rc \
    init.lge.sensors.rc \
    init.lge.usb.configfs.rc \
    init.lge.usb.rc \
    init.msmnile.rc \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qti.ufs.rc \
    init.target.rc \
    init.recovery.alphalm.rc \
    init.recovery.qcom.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/lge/alphalm/alphalm-vendor.mk)

# Crypto
#PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

