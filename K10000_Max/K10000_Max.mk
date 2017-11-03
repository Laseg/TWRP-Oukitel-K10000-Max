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
$(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := K10000_Max
