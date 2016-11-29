LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := x264
LOCAL_SRC_FILES := libx264.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeg
LOCAL_SRC_FILES := libffmpeg.so
LOCAL_SHARED_LIBRARIES := x264
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := yuv2h264
LOCAL_SRC_FILES := native.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_LDLIBS := -llog -ljnigraphics -landroid
LOCAL_SHARED_LIBRARIES := ffmpeg
include $(BUILD_SHARED_LIBRARY)
