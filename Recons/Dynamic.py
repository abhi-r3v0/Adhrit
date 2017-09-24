# !/usr/bin/env python

import os
import subprocess


def adb_con(apk_name):

    found = 0
    installed = 1

    print "\n\t[ + ]  SEARCHING FOR DEVICES "
    adbd = subprocess.Popen(['adb', 'devices'], stdout=subprocess.PIPE)
    adbdo = adbd.stdout.readline()
    if adbdo == 0:
        print "\n[-] No device found. Check if the emulator is running."
        adbd.terminate()
    else:
        print "\n[+] Device found"
        found = 1

    if found == 1:
        print "\n\t[ + ]  INSTALLING THE APK"
        adbi = subprocess.check_output(['adb', 'install', '-r', apk_name])
        if 'Success' in adbi:
            print "\n[+]  Installation successful"
            installed = 1
        else:
            print "\n[-]  Installation failed " + adbi

    if installed == 1:
        labelCmd = "./tools/aapt dump permissions " + apk_name + " | egrep ^package: | cut -d ' ' -f 2-"
        pkglabel = os.popen(labelCmd).read()
        print pkglabel

        print "\n\t[ + ]  IDENTIFYING MAINACTIVITY"
        pk1 = '"'
        pk2 = '"'
        lstcmd = 'adb shell pm dump "' + pkglabel + '" |grep -A 1 MAIN: |' + "cut -d ':' -f 2-" + "| cut -c 19- "
        pkgls = os.popen(lstcmd).read()
        pkr = str(pkgls)
        mainact = str(pk1.rstrip().lstrip()) + str(pkr.lstrip().rstrip()) + str(pk2.lstrip().rstrip().replace("\n", ""))
        print "\nMainActivity Found: " + mainact

        print "\n\t[ + ]  RUNNING MainActivity"
        prun1 = 'adb shell am start ' + mainact
        pkgrun = os.popen(prun1).read()
        if "Starting" in pkgrun:
            print "\n\t\t[ --> ]   Main Launched"
            print "\n\t\t[ --> ]   Logging Activity"
            os.system("adb logcat | grep " + pkglabel + " 1> adbLog.txt")
