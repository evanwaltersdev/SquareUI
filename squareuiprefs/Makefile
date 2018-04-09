include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = SquareUIPrefs
SquareUIPrefs_FILES = 123RootListController.m
SquareUIPrefs_INSTALL_PATH = /Library/PreferenceBundles
SquareUIPrefs_FRAMEWORKS = UIKit
SquareUIPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SquareUIPrefs.plist$(ECHO_END)
