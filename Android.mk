LOCAL_PATH := $(call my-dir)
STITCHER_EXT_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PREBUILT_EXECUTABLES := xfstk-stitcher-external
LOCAL_REQUIRED_MODULES := xfstk-stitcher-external-wrapper

include $(BUILD_HOST_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PREBUILT_EXECUTABLES := xfstk-stitcher-external-wrapper
include $(BUILD_HOST_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_EXECUTABLES := bin/ifcl/ifcl
LOCAL_REQUIRED_MODULES := bin/ifcl/libxfstk-ifcl.a
include $(BUILD_HOST_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := bin/ifcl/libxfstk-ifcl.a
include $(BUILD_HOST_PREBUILT)

include $(CLEAR_VARS)
LOCAL_PREBUILT_EXECUTABLES := bin/capsule_builder/capsulebuilder
#LOCAL_REQUIRED_MODULES := bin/capsule_builder/plugins/libDEFAULTPLUGIN.so
include $(BUILD_HOST_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_PREBUILT_LIBS := bin/capsule_builder/plugins/libDEFAULTPLUGIN.so
#include $(BUILD_HOST_PREBUILT)
