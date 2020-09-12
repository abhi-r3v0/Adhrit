# !/usr/bin/env python3

import os
import subprocess
from colorama import Fore
from sys import exit


def adb_con(apk_name):

    found = 0
    installed = 0
    mainlaunched = 0

    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.GREEN + "[INFO] " + Fore.BLUE + "SEARCHING FOR DEVICES\n")
    adbd = subprocess.Popen(['adb', 'devices'], stdout=subprocess.PIPE)
    adbdo = adbd.stdout.readline()
    if adbdo == 0:
        print(Fore.RED + "\n\t[-] No device found. Check if the emulator is running.")
        adbd.terminate()
        exit(Fore.RED + "\n\t[!] Aborting")
    else:
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Device found")
        found = 1

    if found == 1:
        print(Fore.YELLOW + "\n--------------------------------------------------")
        print(Fore.GREEN + "[INFO] " + Fore.BLUE + "INSTALLING THE APK\n")
        adbi = subprocess.check_output(['adb', 'install', '-r', apk_name])
        if 'Success' in adbi:
            print("\n\t[+] Installation successful")
            installed = 1
        else:
            print("\n\t[-] Installation failed " + adbi)
            exit("\n\t[!] Aborting")

    if installed == 1:
        labelcmd = "./tools/aapt dump permissions " + apk_name + " | egrep ^package: | cut -d ' ' -f 2-"
        pkglabel = os.popen(labelcmd).read()
        print(pkglabel)

        print("\n--------------------------------------------------")
        print(Fore.GREEN + "[INFO] " + Fore.BLUE + "IDENTIFYING MAINACTIVITY\n")
        pk1 = '"'
        pk2 = '"'
        lstcmd = 'adb shell pm dump "' + pkglabel + '" |grep -A 1 MAIN: |' + "cut -d ':' -f 2-" + "| cut -c 18- "
        pkgls = os.popen(lstcmd).read()
        pkr = str(pkgls)
        mainact = str(pk1.rstrip().lstrip()) + str(pkr.lstrip().rstrip()) + str(pk2.lstrip().rstrip().replace("\n", ""))
        print("\n\t[+] MainActivity Found: " + mainact)

        print("\n--------------------------------------------------")
        print("[+] RUNNING MAINACTIVITY\n")
        prun1 = 'adb shell am start ' + mainact
        pkgrun = os.popen(prun1).read()
        if "Starting" in pkgrun:
            mainlaunched += 1
            print("\n\t[ --> ]   Main Launched")
        else:
            exit("\n\t[!] MAIN LAUNCH FAILED. ABORTING")
