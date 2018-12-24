# !/usr/bin/env python3

import os
import zipfile
from colorama import Fore


# Check if there are any virtual apps that the app could be dropping
# noinspection PyGlobalUndefined
def vapp_find(apk_name):
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "SCANNING FOR VIRTUALAPP")
    apk = zipfile.ZipFile(apk_name, 'r')
    global drop_name
    dropper = 0
    if os.path.exists("Extracts") == 0:
        print(Fore.RED + "\n[!] Extracted content not found!")
        print(Fore.BLUE + "\n[+] Extracting")
        apk.extractall("Extract")
        if os.path.exists("Extracts") and os.path.isdir("Extracts"):
            os.chdir("Extracts")
            for foldr, subfoldr, apkfile in os.walk("."):
                for drop_name in apkfile:
                    if drop_name.endswith(".apk"):
                        dropper += 1

    if dropper >= 1:
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Virtual application found: " + Fore.RED + drop_name)
    else:
        print(Fore.RED + "\n\t[+] " + Fore.YELLOW + "No droppers found\n")
