LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := SDL2_spine

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
		$(subst $(LOCAL_PATH)/,, \
			$(wildcard $(LOCAL_PATH)/src/spine/*.cpp) \
		)

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES -Wall -Wextra -pedantic -std=c89

LOCAL_CFLAGS += -Wall -Wextra -Wnon-virtual-dtor -pedantic -std=c++11 -fno-exceptions -fno-rtti

# Warnings we haven't fixed (yet)
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-sign-compare

ifeq ($(NDK_DEBUG),1)
    cmd-strip :=
endif

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image

# 注意，这里必须用LOCAL_WHOLE_STATIC_LIBRARIES
LOCAL_WHOLE_STATIC_LIBRARIES := Spine_static

include $(BUILD_SHARED_LIBRARY)
