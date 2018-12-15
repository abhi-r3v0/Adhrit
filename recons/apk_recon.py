# !/usr/bin/env python3

import zipfile
import os
import sys
import argparse


# Know all about the application.
def apk_rip(apk_name):

    apk = zipfile.ZipFile(apk_name, 'r')
    os.system("mkdir -p Analysis")

    print("\n--------------------------------------------------")
    print(("[+] FILE INPUT  :  " + apk.filename))
    print("\n--------------------------------------------------")
    print("[+] PACKAGE NAME")
    print("\n\t")
    labelCmd = "./tools/aapt dump badging " + apk_name + "| grep package:\ name"
    os.system(labelCmd)
    print("\n")

    print("\n--------------------------------------------------")
    print("[+] PERMISSIONS")
    print("\n")
    permCmd = "./tools/aapt dump permissions "+apk_name + " | tee Permissions.txt"
    os.system(permCmd)
    if os.path.exists('Permissions.txt'):
        os.system('mv Permissions.txt Analysis')
    print("\n")

    print("\n--------------------------------------------------")
    print("[+] MANIFEST INFO")
    print("\n\t")
    confCmd = "./tools/aapt dump badging "+apk_name
    os.system(confCmd)
    print("\n")