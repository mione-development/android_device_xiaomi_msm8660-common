ifneq ($(BUILD_TINY_ANDROID),true)
ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION),50001)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

# Legacy RPC GPS code expects this module to exist, but on this tree it only
# serves as a compatibility dependency anchor for O's stricter module checks.
LOCAL_MODULE := libcommondefs-rpc
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := dummy.c
LOCAL_CFLAGS := -Wno-unused-parameter

include $(BUILD_STATIC_LIBRARY)

endif
endif
