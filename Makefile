DEBUG=0
FINALPACKAGE=1
ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:13.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ModernUI
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
