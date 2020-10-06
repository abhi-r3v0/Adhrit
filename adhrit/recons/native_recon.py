import r2pipe
import base64
import os
import glob
from colorama import Fore, Style



def isBase64(s):
    try:
        return base64.b64encode(base64.b64decode(s)) == s
    except Exception:
        return False

def lib_pwn():

    n = 0
    str_list = []
    print(Fore.YELLOW + "\n--------------------------------------------------")
    binfilepath = glob.glob('Bytecode/lib/arme*')
    if len(binfilepath) > 0:
        binfilepath = binfilepath[0]
        if os.path.exists(binfilepath):
            binfiles = glob.glob(binfilepath + '/*.so')

            for thelibfile in binfiles:
                print(Fore.GREEN + "\n\n[INFO]" + Fore.BLUE + " Analyzing " + Fore.GREEN + thelibfile)

                r = r2pipe.open(thelibfile)
                print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "Lib info")
                print(Fore.YELLOW)
                print("\t")
                print(r.cmd('i'))
                
                print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "Seaching for AES keys")
                print(Fore.YELLOW)
                print("\t") 
                aeskeys = r.cmd('/ca')
                if aeskeys == '':
                    print(Fore.GREEN + "\t[!] " + Fore.YELLOW + "No AES Keys found\n")
                else:
                    print(Fore.YELLOW + aeskeys + "\n")

                print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "[*] Sections")
                print(Fore.YELLOW)
                print("\t")
                print(r.cmd('fs'))

                print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "All Strings\n")
                allstrings = r.syscmdj('rabin2 -j -z ' + thelibfile)
                print(allstrings)

                print(Fore.YELLOW)
                for key, value in allstrings.items():
                    for valuedict in value:
                        for i,j in valuedict.items():
                            if(i == 'string'):
                                if(isBase64(j)):
                                    n +=1
                                    str_list.append(str(base64.b64decode(j)))
                                    # if n < 15:
                                    #     print(Fore.BLUE + "\t[" + str(n) + "] " + Fore.YELLOW + str(base64.b64decode(j)))
                                
                print(Fore.BLUE + "\t\n[+] " + Fore.YELLOW + str(n) + " strings found. Writing all strings to " + Fore.BLUE + "native_stings.txt")
                with open('native_stings.txt', 'a+') as ns:
                    for nstring in str_list:
                        ns.write("\n" + nstring)


        else:
            print(Fore.RED + "\t[!] " + Fore.YELLOW + "Lib not found!")


        return str_list
        

