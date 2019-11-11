# !/usr/bin/env python3

import os
from colorama import Fore


def cleaner(apk_name):
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.GREEN + "[INFO] " + Fore.BLUE + "CLEANING PROJECT")

    namesplit = apk_name.split('.')[0]

    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.system('rm -r Extracts')
        print(Fore.BLUE + "\n\t[-] " + Fore.YELLOW + "REMOVED EXTRACTS")

    if os.path.exists('Source-Java') and os.path.isdir('Source-Java'):
        os.system('rm -r Source-Java')
        print(Fore.BLUE + "\t[-] " + Fore.YELLOW + "REMOVED JAVA SOURCE")

    if os.path.exists('Bytecode') and os.path.isdir('Bytecode'):
        os.system('rm -r Bytecode')
        print(Fore.BLUE + "\n\t[-] " + Fore.YELLOW + "REMOVED BYTECODE")

    if os.path.exists('Analysis') and os.path.isdir('Analysis'):
        os.system('rm -r Analysis')
        print(Fore.BLUE + "\t[-] " + Fore.YELLOW + "REMOVED ANALYSIS")

    if os.path.exists('apk') and os.path.isdir('apk'):
        os.system('rm -r apk')
        print(Fore.BLUE + "\t[-] " + Fore.YELLOW + "REMOVED APK RESIDUALS")

    if os.path.exists(namesplit) and os.path.isdir(namesplit):
        clcmd = 'rm -r ' + namesplit
        os.system(clcmd)

    if os.path.exists('smali_analysis') and os.path.isdir('smali_analysis'):
        os.system('rm -r smali_analysis')
        print(Fore.BLUE + "\t[-] " + Fore.YELLOW + "REMOVED SMALI RESIDUALS")

    if os.path.exists('str_inj.txt'):
        os.system('rm -r str_inj.txt')

    if os.path.exists('native_stings.txt'):
        os.system('rm -r native_stings.txt')

    if os.path.exists('Manifest.xml'):
        os.system('rm -r Manifest.xml')
