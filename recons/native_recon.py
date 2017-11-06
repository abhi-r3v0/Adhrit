# !/usr/bin/env python

import os
import subprocess
from apk_extract import apk_info


def native_disas(apk_name):
    nlib = []
    nlibnames = []
    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.chdir('Extracts')
        Dir = 'lib'
        if os.path.exists(Dir) and os.path.isdir(Dir):
            print "\n--------------------------------------------------"
            print "[+] LIBRARIES FOUND"
            for dirList, subdirList, subfiles in os.walk(Dir):
                for sub in subfiles:
                    nlibnames.append(sub)
                    nlib.append(os.path.join(dirList, sub))
        else:
            print "\n[-] No native libraries found for disassembling\n."

        for so in nlib:
            if so.endswith(".so"):
                print "\n--------------------------------------------------"
                print "[+] NATIVE LIBRARY DUMP FOR " + so + "\n"
                print "----------------------------------------------------"
                print "\n\t[+] FILE  HEADERS"
                os.system("../tools/./arm-objdump -f \t" + so)
                print "\n\t[+] DISASSEMBLY OF " + so + "  TO  " + so + ".txt"
                os.system("../tools/./arm-objdump -d " + so + " > " + so + ".txt")
                print "\n"

    else:
        print "\n\t[-] Content not found. Please extract the APK and try again.\n"
