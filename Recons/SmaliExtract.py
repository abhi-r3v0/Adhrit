import os


def Smali(apk_name) :
    print "[+] --------------  Source code extraction in Smali  ---------------"
    print "\n"
    os.system('mkdir -p Source-Smali')
    snamesplit = apk_name.split('.')[0]
    SmaliCmd = 'java -jar tools/apktool.jar d -f '+apk_name
    os.system(SmaliCmd)
    if os.path.isdir(snamesplit) :
        os.system('mv '+snamesplit+ ' Source-Smali')
        print "\n[+]  Extraction complete. Smali code available in 'Source-Smali' Directory "
