# !/usr/bin/env python3
import os
import re
from sys import exit


def smali_de(apk_name):
    print("\n--------------------------------------------------")
    print("[+] SOURCE EXTRATION IN SMALI\n\n")
    snamesplit = apk_name.split('.')[0]
    SmaliCmd = 'java -jar tools/apktool.jar d -f ' + apk_name
    os.system(SmaliCmd)
    if os.path.isdir(snamesplit):
        print("\n\t[+] Extraction complete.")


def smali_re(apk_name):
    print("\n--------------------------------------------------")
    print("[+] RECOMPILING SMALI")
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit):
        SmaliCmd = 'java -jar tools/apktool.jar b -f ' + snamesplit
        os.system(SmaliCmd)
        print("\n\t[+] Recompiling complete.")
        print(("\n\t[+] The recompiled apk in " + snamesplit + "/dist\n"))
    else:
        print("\n\t[!] smali source not found")


def apk_sign(apk_name):
    print("\n----------------------------------------------")
    print("[+] SIGNING APK")
    snamesplit = apk_name.split('.')[0]
    sdir = snamesplit + '/dist/' + snamesplit + '.apk'
    if os.path.exists(sdir):
        signCmd = 'java -jar tools/sign.jar ' + snamesplit + '/dist/' + snamesplit + '.apk'
        os.system(signCmd)
        msg = "[+] Signed APK found as: " + snamesplit + "/dist/" + snamesplit + ".s.apk"
        print(msg)
    else:
        print("\n\t[!] file not found")


def inj_check(apk_name, flag_format = ''):
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit) == 0:
        print("\n\t[!] bytecode not found. Extracting")
        smali_de(apk_name)
    print("\n--------------------------------------------------")
    print("[+] CHECKING FOR BYTECODE INJECTIONS\n")
    inj_points = 0
    flag_count = 0
    check = 0
    smali_dir = 'smali'
    flag_regex = re.compile(r""+ str(flag_format) +"{[a-z0-9]}*", re.IGNORECASE)
    flags = []
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
                    pattern1 = 'const-string'
                    if re.search(flag_regex, lines):
                        flags.append(lines)
                    if pattern1 in lines:
                        inj_points = inj_points + 1
                        to_write = "\n\t" + os.path.basename(f.name) + "\t:" + lines
                        if os.path.exists("smali_copy/str_inj.txt"):
                            os.system("rm -r smali_copy/str_inj.txt")
                        with open("str_inj.txt", "a+") as strfile:
                            strfile.write(to_write)
                        if inj_points > 0 and inj_points < 10:
                            print(("\n\t" + os.path.basename(f.name) + "\t:" + lines))
                        else:
                            check = 1

    print(("\n\t[+] " + str(inj_points) + " strings found. Injections possible\n"))
    if check == 1:
        print("\n\t[+] Constant strings with file name references written to 'str_inj.txt' file in the 'smali_copy' directory\n")
    if flags:
        print("\n--------------------------------------------------")
        print("[+] FOUND FLAGS\n")
        with open("ctf_flags.txt", "a+") as ctf_file:
            for flag in flags:
                start = flag.find(flag_format)
                end = flag[start:].find('}') + 1
                if start is not -1 and flag[start:end] != "":
                    flag_count += 1
                    ctf_file.write("\n" + flag[start:end])
                    if flag_count > 0 and flag_count < 10:
                        print((flag[start:end]))
    print("\n\t[+] " + str(flag_count) + " flag formats found")
    print("\n\t[+] All the flags written to 'ctf_flags.txt' file in 'smali_copy' directory")