# !/usr/bin/env python3

import os
import zipfile


# Check if there are any virtual apps that the app could be dropping
def vapp_find(apk_name):
    apk = zipfile.ZipFile(apk_name, 'r')
    global drop_name
    dropper = 0
    if os.path.exists("Extracts") == 0:
        print("\n[!] Extracted content not found!")
        print("\n[+] Extracting")
        apk.extractall("Extract")
        if os.path.exists("Extracts") and os.path.isdir("Extracts"):
            os.chdir("Extracts")
            for foldr, subfoldr, apkfile in os.walk("."):
                for drop_name in apkfile:
                    if drop_name.endswith(".apk"):
                        dropper += 1

    if dropper >= 1:
        print("\n[+] Virtual application found: " + drop_name)
    else:
        print("\n[+] No droppers found\n")
