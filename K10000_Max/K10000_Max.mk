LOCAL_PATH := device/Oukitel/K10000_Max

#$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr) # на omni 6.0.1 эта строка уже не нужна и от нее только ошибки сыпятся, на 4.4.4 у меня без нее не собиралось.

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/kernel:kernel \
#$(LOCAL_PATH)/dt.img:dt.img \
$(LOCAL_PATH)/recovery/root/etc/recovery.fstab:recovery.fstab
$(LOCAL_PATH)/recovery/root/fstab.mt6735:fstab.mt6735
$(LOCAL_PATH)/recovery/root/init.rc:init.rc
$(LOCAL_PATH)/recovery/root/init.recovery.mt6735.rc:init.recovery.mt6735.rc
$(LOCAL_PATH)/recovery/root/ueventd.mt6735.rc:ueventd.mt6735.rc
$(LOCAL_PATH)/recovery/root/ueventd.rc:ueventd.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := K10000_Max
