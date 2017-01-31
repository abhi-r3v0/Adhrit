import os


def Smali(apk_name) :
    os.system('mkdir -p Source-Smali')
    snamesplit = apk_name.split('.')[0]
    SmaliCmd = 'java -jar apktool.jar d -f '+apk_name
    os.system(SmaliCmd)
    if os.path.isdir(snamesplit) :
        os.system('mv '+snamesplit+ ' Source-Smali')
