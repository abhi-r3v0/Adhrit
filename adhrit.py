#!/usr/bin/env python
#
#ADRITH is an open source tool for Android malware analysis
#and CTFs to extract maximum amount of information from an apk
#

import zipfile
import os
import sys
import subprocess
import shlex
import argparse
import webbrowser
from Recons.apkRecon import apkRip
from Recons.apkExtract import apkInfo
from Recons.VirusTotal import APICheck
from Recons.SmaliExtract import Smali
from Recons.NativeRecon import NativeDisas
from Recons.Dynamic import adbCon


__author__ = 'Abhishek J M  ( jmabhishek@gmail.com )'


class Adhrit :

    def __init__(self) :

        self.apk_name = ""


    def Welcome(self) :
        os.system('toilet -F metal -f bigascii12 ADHRIT')
        print "\t\twww.github.com/abhi-r3v0/Adhrit "
	print "\n\n"


    def apkripper(self, apk_name) :
        apkRip(apk_name)

    def apkextractor(self, apk_name) :
        apkInfo(apk_name)

    def vtanalyzer(self, apk_name) :
        APICheck(apk_name)

    def smaliextractor(self, apk_name) :
        Smali(apk_name)

    def nativedebug(self, apk_name) :
        NativeDisas(apk_name)

    def dynamicanalysis(self, apk_name) :
        adbCon(apk_name)


#Main fuction starts here
def main() :

    adhrit = Adhrit()
    parser = argparse.ArgumentParser(description = "Help")
    parser.add_argument("-a", help="Dump package info and extract contents and perform analysis")
    parser.add_argument("-r", help="Analyze APK without extraction")
    parser.add_argument("-x", help="Extract APK contents only")
    parser.add_argument("-s", help="Source code of the APK in Smali")
    parser.add_argument("-n", help="Disassemble native libraries")
    parser.add_argument("-w", help="Welcome :P")
    parser.add_argument("-v", help="Check footprints in VirusTotal database")
    parser.add_argument("-d", help="Analyse the behaviour dynamically in a VM")
    args = parser.parse_args()

    if args.a :
        adhrit.Welcome()
        adhrit.apkripper(args.a)
        adhrit.vtanalyzer(args.a)
       	adhrit.apkextractor(args.a)
        adhrit.smaliextractor(args.a)
        adhrit.nativedebug(args.a)
        adhrit.dynamicanalysis(args.a)


    elif args.r :
        adhrit.Welcome()
        adhrit.apkripper(args.r)


    elif args.x :
        adhrit.Welcome()
        adhrit.apkextractor(args.x)


    elif args.s :
        adhrit.Welcome()
        adhrit.smaliextractor(args.s)


    elif args.n :
        adhrit.nativedebug(args.n)


    elif args.w :
        adhrit.Welcome()


    elif args.v :
        adhrit.Welcome()
        adhrit.vtanalyzer(args.v)

    elif args.d :
        adhrit.Welcome()
        adhrit.dynamicanalysis(args.d)


if __name__ == "__main__" :
    main()
