# !/usr/bin/env python

# ADRITH is an open source tool for Android apk analysis
# and CTFs to extract maximum amount of information from an apk

import zipfile
import os
import sys
import subprocess
import argparse
from Recons.apk_recon import apk_rip
from Recons.apk_extract import apk_info
from Recons.virustotal import api_check
from Recons.smali_extract import smali_de
from Recons.smali_extract import smali_re
from Recons.native_recon import native_disas
from Recons.dynamic import adb_con

__author__ = 'Abhishek J M ( jmabhishek@gmail.com )'


class Adhrit:

    def __init__(self):
        self.apk_name = ""

    def welcome(self):
        os.system('toilet -F metal -f bigascii12 ADHRIT')
        print "\t\twww.github.com/abhi-r3v0/Adhrit "
    print "\n\n"

    # Extract APK information without extracting the package
    def apkripper(self, apk_name):
        apk_rip(apk_name)

    # Extract All the contents of the APK into a directory
    def apkextractor(self, apk_name):
        apk_info(apk_name)

    # Check if the APK has been identified by VirusTotal database
    def vtanalyzer(self, apk_name):
        api_check(apk_name)

    # Extract the source code of the APK in smali
    def smaliextractor(self, apk_name):
        smali_de(apk_name)

    # Recompile smali back into APK
    def smalirecompile(self, apk_name):
        smali_re(apk_name)

    # Identify and dump the disassembly of the native libraries within the APK
    def nativedebug(self, apk_name):
        native_disas(apk_name)

    # Install the APK in an emulator and analyze its activities
    def dynamicanalysis(self, apk_name):
        adb_con(apk_name)


# Main fuction starts here
def main():
    adhrit = Adhrit()
    parser = argparse.ArgumentParser(description="Help")
    parser.add_argument("-a", help="Dump package info and extract contents")
    parser.add_argument("-r", help="Analyze APK without extraction")
    parser.add_argument("-x", help="Extract APK contents only")
    parser.add_argument("-s", help="Source code of the APK in Smali")
    parser.add_argument("-b", help="Recompile smali back into APK")
    parser.add_argument("-n", help="Disassemble native libraries")
    parser.add_argument("-w", help="Welcome :P")
    parser.add_argument("-v", help="Check footprints in VirusTotal database")
    parser.add_argument("-d", help="Analyse the behaviour dynamically in a VM")
    args = parser.parse_args()

    if args.a:
        adhrit.welcome()
        adhrit.apkripper(args.a)
        adhrit.vtanalyzer(args.a)
        adhrit.apkextractor(args.a)
        adhrit.smaliextractor(args.a)
        adhrit.nativedebug(args.a)

    elif args.r:
        adhrit.welcome()
        adhrit.apkripper(args.r)

    elif args.x:
        adhrit.welcome()
        adhrit.apkextractor(args.x)

    elif args.s:
        adhrit.welcome()
        adhrit.smaliextractor(args.s)

    elif args.b:
        adhrit.welcome()
        adhrit.smalirecompile(args.b)

    elif args.n:
        adhrit.nativedebug(args.n)

    elif args.w:
        adhrit.welcome()

    elif args.v:
        adhrit.welcome()
        adhrit.vtanalyzer(args.v)

    elif args.d:
        adhrit.welcome()
        adhrit.dynamicanalysis(args.d)


if __name__ == "__main__":
    main()
