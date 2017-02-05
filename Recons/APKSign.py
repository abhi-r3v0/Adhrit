import os
import xml.etree.ElementTree as et

def SignAPK (apk_name) :

    if os.path.exists('Source-Smali') :
        dnamesplit = apk_name.split('.')[0]
        ddir = 'Source-Smali/'+dnamesplit+'/AndroidManifest.xml'
        print "Smali source found"
        if os.path.exists(ddir) :
            print "Manifest found"
            f = open(ddir, "a+")
            line = f.readlines()
            f.close()
            xmlparse = et.parse(ddir)
            root = xmlparse.getroot()
            for app in root.findall('application') :
                print app.text
                if app.attrib == '{http://schemas.android.com/apk/res/android}allowBackup' :
                    print app.text
                    attr = app.attrib

    else :
        print "\n\n"
        print "[!] Smali source not found. Extracting .."
        snamesplit = apk_name.split('.')[0]
        SmaliCmd = 'java -jar apktool.jar d -f '+apk_name
        os.system(SmaliCmd)
        if os.path.isdir(snamesplit) :
            os.system('mkdir -p Source-Smali')
            os.system('mv '+snamesplit+ ' Source-Smali')
            print "\n[+]  Extraction complete. Smali code available in 'Source-Smali' Directory "

        if os.path.exists('Source-Smali') :
            dnamesplit = apk_name.split('.')[0]
            ddir = '/'+dnamesplit+'/AndroidManifest.xml'
            print "Smali source found"
            Dir = 'Source-Smali/'+dnamesplit+'/'
            for root, subdirList, files in os.walk(Dir):
                for fname in files:
                    if fname == 'AndroidManifest.xml' :
                        print('\t[>] %s' % fname)
