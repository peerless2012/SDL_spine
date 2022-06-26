#LOCAL_PATH := $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_MODULE := Spine_static
#LOCAL_SRC_FILES := $(NDK_OUT)/local/$(TARGET_ARCH_ABI)/libSpine.a
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
#include $(PREBUILT_STATIC_LIBRARY)

#include $(CLEAR_VARS)
#
#LOCAL_MODULE := SDL2_spine
#
#LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/spine \
#		$(LOCAL_PATH)/../spine \
#		$(LOCAL_PATH)/../SDL/include \
#		$(LOCAL_PATH)/../SDL_image \
#
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)
#
#LOCAL_SRC_FILES := $(NDK_OUT)/local/$(TARGET_ARCH_ABI)/libSpine.a
#
#LOCAL_SRC_FILES := \
#		$(subst subst $(LOCAL_PATH)/,, \
#		$(wildcard $(LOCAL_PATH)/src/spine/*.cpp) \
#		)
#
#LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image
#
#LOCAL_STATIC_LIBRARIES := Spine_static
#
#include $(BUILD_SHARED_LIBRARY)
