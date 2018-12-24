# !/usr/bin/env python3

import subprocess
from colorama import Fore

paths = ["/system/app/Superuser.apk",
         "/system/priv-app/Superuser.apk",
         "/system/priv-app/superuser.apk",
         "/system/app/superuser.apk",
         "/sbin/su",
         "/system/bin/su",
         "/system/xbin/su",
         "/data/local/xbin/su",
         "/data/local/bin/su",
         "/system/sd/xbin/su",
         "/system/bin/failsafe/su",
         "/data/local/su",
         "/su/bin/su"]


def check_root():
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "CHECKING ROOT STATUS\n")
    device = subprocess.check_output('adb devices', shell=True)
    if len(device) is not 26:
        for path in paths:
            cmd = "adb shell 'if [ -f " + path + " ];then echo 1; else echo 0; fi'"
            root_check = subprocess.check_output(cmd, shell=True)
            if root_check is 1:
                print(Fore.BLUE + "\t[+] " + Fore.YELLOW + "Device is rooted")
                break
        print(Fore.RED + "\t[-] Device is not rooted")
    else:
        print(Fore.RED + "\t[!] Device is not connected")
