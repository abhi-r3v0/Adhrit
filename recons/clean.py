# !/usr/bin/env python3


import os


def cleaner(apk_name):
    print("\n--------------------------------------------------")
    print("[+] CLEANING PROJECT")

    namesplit = apk_name.split('.')[0]

    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.system('rm -r Extracts')

    if os.path.exists('Source-Java') and os.path.isdir('Source-Java'):
        os.system('rm -r Source-Java')

    if os.path.exists('Analysis') and os.path.isdir('Analysis'):
        os.system('rm -r Analysis')

    if os.path.exists('apk') and os.path.isdir('apk'):
        os.system('rm -r apk')

    if os.path.exists(namesplit) and os.path.isdir(namesplit):
        clcmd = 'rm -r ' + namesplit
        os.system(clcmd)

    if os.path.exists('smali_copy') and os.path.isdir('smali_copy'):
        os.system('rm -r smali_copy')

    if os.path.exists('str_inj.txt'):
    	os.system('rm -r str_inj.txt')
