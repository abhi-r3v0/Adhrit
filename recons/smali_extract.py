# !/usr/bin/env python

import os


def smali_de(apk_name):
    print "[+] ------  Source code extraction in Smali  -------"
    print "\n"
    snamesplit = apk_name.split('.')[0]
    SmaliCmd = 'java -jar tools/apktool.jar d -f ' + apk_name
    os.system(SmaliCmd)
    if os.path.isdir(snamesplit):
        print "\n[+]  Extraction complete."


def smali_re(apk_name):
    print "[+] ---------------  Recompiling Smali ---------------"
    print "\n"
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit):
        SmaliCmd = 'java -jar tools/apktool.jar b -f ' + snamesplit
        os.system(SmaliCmd)
        print "\n[+]  Recompiling complete."
        print "\n[+]  The recompiled apk in " + snamesplit + "/dist\n"
    else:
        print "\n[!]  smali source not found"
