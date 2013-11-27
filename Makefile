#
# Makefile for OPPO R819
#

local-zip-file		:= stockrom.zip

local-out-zip-file	:= MIUI_R819.zip

# All apps need to be removed from original ZIP file
local-remove-apps   := \
	BasicDreams \
	HoloSpiralWallpaper \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	Music2 \
	NoiseField \
	Launcher2 \
	PhaseBeam \
	Superuser \
	SystemUpdate \
	SystemUpdateAssistant

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     := 

local-miui-modified-apps := Phone

local-density := XHDPI

# To define any local-target
updater := misc/updater-script

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should: 
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip :=

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp ../miui/XHDPI/system/lib/liblbesec.so $(ZIP_DIR)/system/lib
	cp misc/build.prop $(ZIP_DIR)/system/build.prop
	rm $(ZIP_DIR)/system/framework/theme-res-mint.apk
	rm $(ZIP_DIR)/system/framework/theme-res-mocha.apk
	rm $(ZIP_DIR)/system/framework/theme-res-raspberry.apk
