LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2djs_shared

LOCAL_MODULE_FILENAME := libcocos2djs

LOCAL_SRC_FILES := ../../Classes/AppDelegate.cpp ../../Classes/ide-support/SimpleConfigParser.cpp ../../Classes/ide-support/RuntimeJsImpl.cpp hellojavascript/main.cpp ../../Classes/PluginBee7JS.cpp ../../Classes/PluginBee7JSHelper.cpp ../../Classes/SDKBoxJSHelper.cpp

LOCAL_LDLIBS := -landroid -llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
LOCAL_WHOLE_STATIC_LIBRARIES := PluginBee7 sdkbox


LOCAL_STATIC_LIBRARIES := cocos2d_js_static
LOCAL_STATIC_LIBRARIES += cocos2d_simulator_static

include $(BUILD_SHARED_LIBRARY)
$(call import-add-path,$(LOCAL_PATH))


$(call import-module,scripting/js-bindings/proj.android/prebuilt-mk)
$(call import-module,tools/simulator/libsimulator/proj.android/prebuilt-mk)
$(call import-module, ./sdkbox)
$(call import-module, ./pluginbee7)
