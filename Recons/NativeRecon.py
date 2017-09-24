# !/usr/bin/env python

import os
import subprocess
from apkExtract import apkInfo


def NativeDisas(apk_name):
    nlib = []
    nlibnames = []
    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.chdir('Extracts')
        Dir = 'lib'
        if os.path.exists(Dir) and os.path.isdir(Dir):
            print 'lib found'
            for dirList, subdirList, subfiles in os.walk(Dir):
                for sub in subfiles:
                    nlibnames.append(sub)
                    nlib.append(os.path.join(dirList, sub))
        print os.getcwd()

        for so in nlib:
            if so.endswith(".so"):
                print "\n\n\t\t ----- NATIVE LIBRARY DUMP FOR " + so + "----\n"
                print "\n\t[+] FILE  HEADERS"
                os.system("../tools/./arm-objdump -f \t" + so)
                print "\n\t[+] DISASSEMBLY OF " + so + "  TO  " + so + ".txt"
                os.system("../tools/./arm-objdump -d " + so + " > " + so + ".txt")
                print "\n"

    else:
        print "\n\n Content not found. Please extract the APK and try again."
