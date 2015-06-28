THEOS_DEVICE_IP = 192.168.1.10
ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = BatColor
BatColor_FILES = Tweak.xm
BatColor_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk
THEOS_PACKAGE_BASE_VERSION = 1BC
_THEOS_INTERNAL_PACKAGE_VERSION = 1BC


after-install::
	install.exec "killall -9 SpringBoard"
