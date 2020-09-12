#!/usr/bin/env python3
from colorama import Fore
import os
from adhrit.recons.smarser.parser import parser

print(Fore.YELLOW + "\n--------------------------------------------------")
print(Fore.GREEN + "[INFO] " + Fore.BLUE + "SOURCE EXTRATION IN SMALI\n")
apk_name = 'app.apk'
print(Fore.YELLOW)
smalicmd = '/usr/local/bin/apktool d  -f -r ' + apk_name + ' -o Bytecode'
os.system(smalicmd)
if os.path.isdir('Bytecode'):
	print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Extraction complete")

parser()