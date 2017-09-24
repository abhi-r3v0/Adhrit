# !/usr/bin/env python

import zipfile
import os
import sys
import argparse
import subprocess


# To know the contents of a package
def apk_info(apk_name):

    apk = zipfile.ZipFile(apk_name, 'r')

    print "[+] -----------------  EXTRACTING JAR  ------------------"
    print "\n"
    dexCommand = 'sh tools/JarConverter.sh --force '+apk_name
    os.system(dexCommand)
    print "\t[+] " + apk_name + "'s source has been extracted as jar"
    print "\n\n"

    print "[+] ----------------  EXTRACTING SOURCE  ----------------"
    print "\n"
    namesplit = apk_name.split('.')[0]
    javaSrc = 'java -jar tools/jd-cli.jar  ' + namesplit + '-dex2jar.jar' + ' -od ' + ' Source-Java' + ' 1> /dev/null 2> /dev/null'
    os.system(javaSrc)
    print "\n Extraction complete. Check 'Source' directory."
    print "\n"
    print "--------------------------------------------------------"
    print "\n"

    apk.extractall("Extracts")
    print "\n\t [+]  Extracted the file contents to directory : Extracts"
    jarcpy = 'mv ' + namesplit + '-dex2jar.jar' + ' Extracts'
    os.system(jarcpy)
    print "\n\n"

    print "[+] ---------------  EXTRACTED CONTENTS  -----------------"
    print "\n"
    for file in os.listdir("Extracts"):
        print "\t" + file
    if os.path.exists('Extracts'):
        os.chdir('Extracts')
    os.system('cp AndroidManifest.xml ../')
    print "\n\n"

    print "[+] ----------------  CERTIFICATE  -------------------"
    print "\n"
    os.system('openssl pkcs7 -inform DER -in META-INF/CERT.RSA -noout -print_certs -text | tee Certificate.txt ')
    print "Certificate details extracted to Certificate.txt"
    print "\n\n"

    print "[+] ------------------  STRINGS  -----------------------"
    print "\n\t\t Executing Strings on classes.dex "
    dexstrings1 = os.system('strings classes.dex > Strings1.txt')
    if os.path.exists('classes2.dex'):
        dexstrings2 = os.system('strings classes2.dex > Strings2.txt')
    print "\n Output written to 'Strings.txt' found in the Extracts directory"
    print "\n\n"

    print "[+] ----------------  NATIVE LIBRARIES  ----------------"
    print "\n"
    Dir = 'lib'
    for libdir, subdirList, libs in os.walk(Dir):
        for fname in libs:
            print('\t[>] %s' % fname)
    print "\n\n"

    print "[+] -----------------  MANIFEST DUMP  -----------------"
    print "\n"
    os.chdir('..')
    manDmp = 'java -jar tools/AXML.jar  AndroidManifest.xml  >> Manifest.xml'
    os.system(manDmp)
    if os.path.isdir('Source-Java'):
        os.system('mv  Manifest.xml  Source-Java')
    os.system('rm AndroidManifest.xml')
    print "\n"
    print "The parsed Manifest can be found as Manifest.xml"
    print "\n\n"
    print "------------------------------------------------------"
    print "\n\n\n"
