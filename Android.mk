LOCAL_PATH := $(call my-dir)

ifndef RMX2001_BUILD
    RMX2001_BUILD := false
endif

ifeq ($(TARGET_DEVICE),RM6785)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
else ifeq ($(TARGET_DEVICE),RMX2001)
    ifeq ($(RMX2001_BUILD),false)
        $(warning "Target device is RMX2001 but RMX2001_BUILD variable is not set")
        $(warning "Recovery size will be 98MB")
    endif
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
