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
    print "[+] -------------  Recompiling Smali ---------------"
    print "\n"
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit):
        SmaliCmd = 'java -jar tools/apktool.jar b -f ' + snamesplit
        os.system(SmaliCmd)
        print "\n[+]  Recompiling complete."
        print "\n[+]  The recompiled apk in " + snamesplit + "/dist\n"
    else:
        print "\n[!]  smali source not found"


def inj_check(apk_name):
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit) == 0:
        print "\n[!] bytecode not found. Extracting"
        smali_de(apk_name)
    print "\n[+]------ Checking For Bytecode Injections ------ \n"
    inj_points = 0
    smali_dir = 'smali'
    if os.path.isdir('smali_copy'):
        os.system('rm -r smali_copy')
    os.system('cp -R ' + snamesplit + '/' + smali_dir + ' smali_copy')
    if os.path.isdir('smali_copy'):
        os.chdir('smali_copy')
        ignore_dirs = ['android', 'org', 'google', 'localytics']
        for dirList, subdirList, subfiles in os.walk(os.getcwd()):
            for subfiles in ignore_dirs:
                os.system('rm -r ' + subfiles + ' 2> /dev/null')
            for subdirList in ignore_dirs:
                os.system('rm -r ' + subdirList + ' 2> /dev/null')
            for dirList in ignore_dirs:
                os.system('rm -r ' + dirList + ' 2> /dev/null')

    for dirList, subdirList, subfiles in os.walk(os.getcwd()):
        for files in subfiles:
            with open(os.path.abspath(os.path.join(dirList, files))) as f:
                for lines in f:
                    pattern = 'const-string'
                    if pattern in lines:
                        inj_points = inj_points + 1
                        print "\n\t" + os.path.basename(f.name)
                        print lines
    print "[+] " + str(inj_points) + " simple injection points found\n"
