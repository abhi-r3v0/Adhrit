# !/usr/bin/env python3

import os
import re
from colorama import Fore


def smali_de(apk_name):
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "SOURCE EXTRATION IN SMALI\n")
    snamesplit = apk_name.split('.')[0]
    print(Fore.YELLOW)
    smalicmd = 'java -jar tools/apktool.jar d -f ' + apk_name
    os.system(smalicmd)
    if os.path.isdir(snamesplit):
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Extraction complete")


def smali_re(apk_name):
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "RECOMPILING SMALI")
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit):
        smalicmd = 'java -jar tools/apktool.jar b -f ' + snamesplit
        os.system(smalicmd)
        print(Fore.YELLOW)
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Recompiling complete.")
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "The recompiled apk in " + snamesplit + "/dist\n")
    else:
        print(Fore.RED + "\n\t[!] smali source not found")


def apk_sign(apk_name):
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "SIGNING APK")
    snamesplit = apk_name.split('.')[0]
    sdir = snamesplit + '/dist/' + snamesplit + '.apk'
    if os.path.exists(sdir):
        signcmd = 'java -jar tools/sign.jar ' + snamesplit + '/dist/' + snamesplit + '.apk'
        os.system(signcmd)
        print(Fore.YELLOW)
        msg = "Signed APK found as: " + snamesplit + "/dist/" + snamesplit + ".s.apk"
        print(Fore.BLUE + "[+] " + Fore.YELLOW + msg)
    else:
        print(Fore.RED + "\n\t[!] file not found")


# noinspection PyUnusedLocal,PyUnusedLocal,PyUnusedLocal
def inj_check(apk_name, flag_format=''):
    snamesplit = apk_name.split('.')[0]
    if os.path.isdir(snamesplit) == 0:
        print(Fore.RED + "\n\t[!] bytecode not found. Extracting")
        smali_de(apk_name)
    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "CHECKING FOR BYTECODE INJECTIONS\n\n")
    inj_points = 0
    flag_count = 0
    check = 0
    url_count = 0
    urls = []
    smali_dir = 'smali'
    flag_regex = re.compile(r"" + str(flag_format) + "{[a-z0-9]}*", re.IGNORECASE)
    url_regex = 'https?://(?:[-\w.]|(?:%[\da-fA-F]{2}))+'
    flags = []
    if os.path.isdir('smali_analysis'):
        os.system('rm -r smali_analysis')
    os.system('cp -R ' + snamesplit + '/' + smali_dir + ' smali_analysis')
    if os.path.isdir('smali_analysis'):
        os.chdir('smali_analysis')
        ignore_dirs = ['android', 'org', 'google', 'localytics']
        for dirList, subdirList, subfiles in os.walk(os.getcwd()):
            # noinspection PyAssignmentToLoopOrWithParameter
            for subfiles in ignore_dirs:
                os.system('rm -r ' + subfiles + ' 2> /dev/null')
            # noinspection PyAssignmentToLoopOrWithParameter
            for subdirList in ignore_dirs:
                os.system('rm -r ' + subdirList + ' 2> /dev/null')
            # noinspection PyAssignmentToLoopOrWithParameter
            for dirList in ignore_dirs:
                os.system('rm -r ' + dirList + ' 2> /dev/null')

    for dirList, subdirList, subfiles in os.walk(os.getcwd()):
        for files in subfiles:
            with open(os.path.abspath(os.path.join(dirList, files))) as f:
                for lines in f:
                    pattern1 = 'const-string'
                    if re.search(flag_regex, lines):
                        flags.append(lines)
                    if re.search(url_regex, lines):
                        urls.append(lines)
                    if pattern1 in lines:
                        inj_points += 1
                        to_write = "\n\t" + os.path.basename(f.name) + "\t:" + lines
                        if os.path.exists("smali_analysis/str_inj.txt"):
                            os.system("rm -r smali_analysis/str_inj.txt")
                        with open("str_inj.txt", "a+") as strfile:
                            strfile.write(to_write)
                        if 0 < inj_points < 10 and len(lines) < 100:
                            print(Fore.BLUE + "\t[>] " + Fore.YELLOW + os.path.basename(f.name) + "\t:" + lines)
                        else:
                            check = 1

    print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + str(inj_points) + " strings found. Injections possible\n")
    if check == 1:
        print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + "Constant strings written to 'str_inj.txt' file in 'smali_analysis' directory\n")

    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "SEARCHING FOR CTF FLAGS\n")
    if flags:
        with open("ctf_flags.txt", "a+") as ctf_file:
            for flag in flags:
                start = flag.find(flag_format)
                end = flag[start:].find('}') + 1
                if start is not -1 and flag[start:end] != "":
                    flag_count += 1
                    ctf_file.write("\n" + flag[start:end])
                    if 0 < flag_count < 10:
                        print("\n\t" + Fore.BLUE + "[>] " + Fore.YELLOW + flag[start:end])
        if flag_count == 0:
            print(Fore.RED + "\n\t[-] No flags found ")
            exit(0)
        print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + str(flag_count) + " flag formats found")
        print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + "All the flags written to 'ctf_flags.txt' file in " + Fore.BLUE + "'smali_analysis'" + Fore.YELLOW + "directory")

    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.YELLOW + "[+] " + Fore.BLUE + "SEARCHING FOR URLs\n\n")
    if urls:
        with open("urls.txt", "a+") as url_file:
            for foundurls in urls:
                url_file.write(foundurls)
                url_count += 1
                if 0 < url_count < 10:
                    print(Fore.BLUE + "\t[>] " + Fore.YELLOW + foundurls)
        print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + str(url_count) + " urls found")
        print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + "All the URLs written to 'urls.txt' file in " + Fore.BLUE + "'smali_analysis'" + Fore.YELLOW + " directory")
