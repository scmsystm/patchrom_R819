import common
import edify_generator
import os
import re

def IncrementalOTA_InstallEnd(info):
     try:
        info.script.AppendExtra('symlink("su", "/system/bin/su");')
     except KeyError:
        print "error"
     AddAssertions(info)


def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "\"/dev/block/mmcblk0p3\", \"0\");" in edify.script[i] :
            edify.script[i] = edify.script[i].replace("\"/dev/block/mmcblk0p3\", \"0\");", '"/dev/block/mmcblk0p3", "0", "/system");')
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.product.device") == "R819" ||  getprop("ro.build.product") == "R819");')
    for i in xrange(len(edify.script)):
        if "package_extract_file(\"boot.img\", \"boot\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("package_extract_file(\"boot.img\", \"boot\");", 'assert(package_extract_file("boot.img", "/tmp/boot.img"),write_raw_image("/tmp/boot.img", "bootimg"),delete("/tmp/boot.img"));')
            return

def FullOTA_InstallEnd(info):
    try:
        info.script.AppendExtra('set_perm(0, 0, 0755, "/system/lib/liblbesec.so");')
        info.script.AppendExtra('symlink("su", "/system/bin/su");')
        info.script.AppendExtra('symlink("p2p_mt6628.ko", "/system/lib/modules/p2p.ko");')
        info.script.AppendExtra('symlink("wlan_mt6628.ko", "/system/lib/modules/wlan.ko");')
        info.script.AppendExtra('symlink("p2p_mt6620.ko", "/system/lib/modules/p2p.ko");')
        info.script.AppendExtra('symlink("wlan_mt6620.ko", "/system/lib/modules/wlan.ko");')
        info.script.AppendExtra('symlink("aee_aed", "/system/bin/debuggerd");')

    except KeyError:
        print "errot in adding audio files to target_files; skipping install"
    AddAssertions(info)

