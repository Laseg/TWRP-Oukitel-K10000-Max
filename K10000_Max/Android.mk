LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),K10000_Max)
include $(call all-makefiles-under,$(LOCAL_PATH))

endif