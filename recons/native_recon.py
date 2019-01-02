# !/usr/bin/env python3

import os
from colorama import Fore


# noinspection PyUnusedLocal
def native_disas(apk_name):
    nlib = []
    nlibnames = []
    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.chdir('Extracts')
        directory = 'lib'
        if os.path.exists(directory) and os.path.isdir(directory):
            print(Fore.YELLOW + "\n--------------------------------------------------")
            print(Fore.GREEN + "[INFO] " + Fore.BLUE + "LIBRARIES FOUND")
            for dirList, subdirList, subfiles in os.walk(directory):
                for sub in subfiles:
                    nlibnames.append(sub)
                    nlib.append(os.path.join(dirList, sub))
        else:
            print(Fore.RED + "\n[-] No native libraries found for disassembling\n.")

        for so in nlib:
            if so.endswith(".so"):
                print("\n--------------------------------------------------")
                print(Fore.BLUE + "[+] " + Fore.YELLOW + "NATIVE LIBRARY DUMP FOR " + so + "\n")
                print(Fore.BLUE + "\n\t[>] " + Fore.YELLOW + "FILE  HEADERS")
                os.system("../tools/./arm-objdump -f \t" + so)
                print(Fore.BLUE + "\n\t[>] " + Fore.YELLOW + "DISASSEMBLY OF " + so + "  TO  " + so + ".txt")
                os.system("../tools/./arm-objdump -d " + so + " > " + so + ".txt")
                print("\n")

    else:
        print(Fore.RED + "\n\t[-] lib not found. Please extract the APK and try again.\n")
