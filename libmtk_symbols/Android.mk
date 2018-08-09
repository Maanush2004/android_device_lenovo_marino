LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_xlog.cpp \
    mtk_gui.cpp \
    mtk_ui.cpp \
    mtk_audio.cpp \
    mtk_omx.cpp \
    icu55.c \
    icu53.c \
    program_binary_builder.cpp \
    vtservice.cpp \
    mtk_gps.cpp \
    mtk_bionic.cpp

# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_SHARED_LIBRARIES := libcutils libbinder libutils liblog libgui libui libicuuc libicui18n libcrypto libstagefright_foundation libssl libc libmedia
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

LOCAL_CLANG := true
LOCAL_CPPFLAGS := -std=c++1y
LOCAL_CPPFLAGS += -Wno-exit-time-destructors
LOCAL_CPPFLAGS += -Wno-global-constructors
LOCAL_CPPFLAGS += -Wno-c++98-compat-pedantic
LOCAL_CPPFLAGS += -Wno-four-char-constants
LOCAL_CPPFLAGS += -Wno-padded

include $(BUILD_SHARED_LIBRARY)
