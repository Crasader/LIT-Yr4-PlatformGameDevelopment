LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d/cocos/audio/include)
$(call import-add-path,$(LOCAL_PATH))

LOCAL_MODULE := MyGame_shared

LOCAL_MODULE_FILENAME := libMyGame

LOCAL_SRC_FILES := $(LOCAL_PATH)/hellocpp/main.cpp \
$(LOCAL_PATH)/../../../Classes/Achievement.cpp \
$(LOCAL_PATH)/../../../Classes/AppDelegate.cpp \
$(LOCAL_PATH)/../../../Classes/Asteroid.cpp \
$(LOCAL_PATH)/../../../Classes/AsteroidOriginal.cpp \
$(LOCAL_PATH)/../../../Classes/Audio.cpp \
$(LOCAL_PATH)/../../../Classes/AudioMenu.cpp \
$(LOCAL_PATH)/../../../Classes/CreditsScene.cpp \
$(LOCAL_PATH)/../../../Classes/DPad.cpp \
$(LOCAL_PATH)/../../../Classes/EnemyShip.cpp \
$(LOCAL_PATH)/../../../Classes/EnemyShipDerpStar.cpp \
$(LOCAL_PATH)/../../../Classes/EnemyShipKling.cpp \
$(LOCAL_PATH)/../../../Classes/EnemyShipWilknot.cpp \
$(LOCAL_PATH)/../../../Classes/EnterName.cpp \
$(LOCAL_PATH)/../../../Classes/Game.cpp \
$(LOCAL_PATH)/../../../Classes/GameOverScene.cpp \
$(LOCAL_PATH)/../../../Classes/HighScores.cpp \
$(LOCAL_PATH)/../../../Classes/HealthBar.cpp \
$(LOCAL_PATH)/../../../Classes/HUD.cpp \
$(LOCAL_PATH)/../../../Classes/Input.cpp \
$(LOCAL_PATH)/../../../Classes/Level.cpp \
$(LOCAL_PATH)/../../../Classes/Level1.cpp \
$(LOCAL_PATH)/../../../Classes/Level2.cpp \
$(LOCAL_PATH)/../../../Classes/Level3.cpp \
$(LOCAL_PATH)/../../../Classes/Level4.cpp \
$(LOCAL_PATH)/../../../Classes/MainMenu.cpp \
$(LOCAL_PATH)/../../../Classes/MenuScene.cpp \
$(LOCAL_PATH)/../../../Classes/MusicPlayer.cpp \
$(LOCAL_PATH)/../../../Classes/ParallaxNodeExtras.cpp \
$(LOCAL_PATH)/../../../Classes/Player.cpp \
$(LOCAL_PATH)/../../../Classes/PowerUp.cpp \
$(LOCAL_PATH)/../../../Classes/Settings.cpp \
$(LOCAL_PATH)/../../../Classes/SplashScene.cpp \
$(LOCAL_PATH)/../../../Classes/StoryScene.cpp \
$(LOCAL_PATH)/../../../Classes/SignInScene.cpp \
$(LOCAL_PATH)/../../../Classes/XML.cpp


LOCAL_CPPFLAGS := -DSDKBOX_ENABLED
LOCAL_LDLIBS := -landroid \
-llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_WHOLE_STATIC_LIBRARIES += PluginGoogleAnalytics
LOCAL_WHOLE_STATIC_LIBRARIES += sdkbox
LOCAL_WHOLE_STATIC_LIBRARIES += PluginSdkboxPlay

LOCAL_STATIC_LIBRARIES := cocos2dx_static

# Additional code for UI
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_ui_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
# 21/02/2018 Additional for UI
$(call import-module,extensions)
$(call import-module,ui)
$(call import-module, ./sdkbox)
$(call import-module, ./plugingoogleanalytics)
$(call import-module, ./pluginsdkboxplay)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
