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
	SystemUpdateAssistant \
	YouTube \
	PlusOne \
	Velvet \
	Phonesky \
	CalendarGoogle \
	ChromeWithBrowser \
	Gmail2 \
	GmsCore \
	GoogleTTS \
	talkback \
	GMS_Maps

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     := 

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should: 
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip :=

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	cp misc/updater-script $(ZIP_DIR)/META-INF/com/google/android
	rm $(ZIP_DIR)/system/framework/theme-res-mint.apk
	rm $(ZIP_DIR)/system/framework/theme-res-mocha.apk
	rm $(ZIP_DIR)/system/framework/theme-res-raspberry.apk
