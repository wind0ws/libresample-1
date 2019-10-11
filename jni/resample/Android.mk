LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := resample
LOCAL_SRC_FILES := resample.c resample-interface.c
LOCAL_C_INCLUDES := resample.h resample-interface.h
LOCAL_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)



include $(CLEAR_VARS)

LOCAL_MODULE := resample_bin
LOCAL_SRC_FILES := main.c resample.c resample-interface.c
LOCAL_C_INCLUDES := resample.h resample-interface.h
LOCAL_LDLIBS := -llog

#include $(BUILD_SHARED_LIBRARY)
LOCL_CFLAGS  += -std=c99 -g -O0 -Wall -fPIE 
#LOCL_CFLAGS  += -fno-inline -fno-omit-frame-pointer
LOCAL_LDFLAGS += -pie -fPIE

include $(BUILD_EXECUTABLE)