FOX_MANIFEST_ROOT=$(gettop)
if [ -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox_defaults.go -a -f $FOX_MANIFEST_ROOT/bootable/recovery/orangefox.mk ]; then
	if [ -z "$TW_DEFAULT_LANGUAGE" ]; then
		unset TW_DEFAULT_LANGUAGE
		export TW_DEFAULT_LANGUAGE="ru"
	fi
export OF_SCREEN_H=2400
export FOX_VERSION=$(date +%y.%m.%d)
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_BUILD_TYPE="Stable"
export OF_STATUS_H=99
export OF_STATUS_INDENT_LEFT=48 
export OF_STATUS_INDENT_RIGHT=48
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_AB_DEVICE=1
export OF_AB_DEVICE_WITH_RECOVERY_PARTITION=1
export OF_USE_LZ4_COMPRESSION=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export FOX_DELETE_AROMAFM=1
export OF_USE_GREEN_LED=0
export OF_MAINTAINER=unreal3579
export OF_HIDE_NOTCH=1
export OF_CLOCK_POS=1
export OF_QUICK_BACKUP_LIST="/boot;/data;"
export FOX_NO_SAMSUNG_SPECIAL=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_NANO_EDITOR=1
export OF_DYNAMIC_FULL_SIZE=9126805504
export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
export OF_DEFAULT_TIMEZONE="SAUST-3"

# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi
#
