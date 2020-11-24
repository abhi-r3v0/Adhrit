# !/usr/bin/env python3

import os
from colorama import Fore


def cleaner(hash_of_apk):
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.GREEN + "[INFO] " + Fore.BLUE + "CLEANING PROJECT")

    if os.path.exists(hash_of_apk) and os.path.isdir(hash_of_apk):
        cmd = 'rm -rf '+ hash_of_apk
        os.system(cmd)
        print(Fore.BLUE + "\n\t[-] " + Fore.YELLOW + "REMOVED EXTRACTS")
