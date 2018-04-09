include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SquareUI
SquareUI_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += squareuiprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
