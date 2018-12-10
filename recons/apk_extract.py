# !/usr/bin/env python

import zipfile
import os
import sys
import argparse
import subprocess


# To know the contents of a package
def apk_info(apk_name):

    nlc = 0
    apk = zipfile.ZipFile(apk_name, 'r')

    print "\n--------------------------------------------------"
    print "[+] EXTRACTING JAR"
    print "--------------------------------------------------"
    dexCommand = 'sh tools/JarConverter.sh --force '+apk_name
    os.system(dexCommand)
    print "\n\t[+] " + apk_name + "'s source has been extracted as jar"
    print "\n"

    print "\n--------------------------------------------------"
    print "[+] EXTRACTING SOURCE"
    print "--------------------------------------------------"
    namesplit = apk_name.split('.')[0]
    javaSrc = 'java -jar tools/cfr.jar  ' + namesplit + '-dex2jar.jar' + ' --silent ' + ' --outputdir' + ' Source-Java' + ' 1> /dev/null 2> /dev/null'
    os.system(javaSrc)
    print "\n\t[+] Extraction complete. Check 'Source' directory."

    if os.path.exists('Extracts') and os.path.isdir('Extracts'):
        os.system('rm -r Extracts')
    apk.extractall("Extracts")
    print "\n\t[+] Extracted the file contents to directory : Extracts"
    jarcpy = 'mv ' + namesplit + '-dex2jar.jar' + ' Extracts'
    os.system(jarcpy)
    print "\n"

    print "--------------------------------------------------"
    print "[+] EXTRACTED CONTENTS"
    print "--------------------------------------------------"
    for file in os.listdir("Extracts"):
        print "\t" + file
    if os.path.exists('Extracts'):
        os.chdir('Extracts')
    os.system('cp AndroidManifest.xml ../')
    print "\n"

    print "--------------------------------------------------"
    print "[+] CERTIFICATE"
    print "--------------------------------------------------"
    print "\n"
    os.system('openssl pkcs7 -inform DER -in META-INF/CERT.RSA -noout -print_certs -text | tee Certificate.txt ')
    print "\n\t[+]Certificate details extracted to Certificate.txt"
    print "\n"

    print "--------------------------------------------------"
    print "[+] STRINGS"
    print "--------------------------------------------------"
    print "\n\t[+] Executing Strings on classes.dex "
    dexstrings1 = os.system('strings classes.dex > Strings1.txt')
    if os.path.exists('classes2.dex'):
        dexstrings2 = os.system('strings classes2.dex > Strings2.txt')
    print "\n\t[+] Output written to 'Strings.txt' found in the Extracts directory"
    print "\n"

    print "--------------------------------------------------"
    print "[+] NATIVE LIBRARIES"
    print "--------------------------------------------------"
    print "\n"
    Dir = 'lib'
    for libdir, subdirList, libs in os.walk(Dir):
        for fname in libs:
            if fname == '':
                nlc = ncl+2
            else:
                print('\t[>] %s' % fname)
    if nlc > 0:
        print "\n\t[-] No native libraries found"
    print "\n\n"

    print "--------------------------------------------------"
    print "[+] MANIFEST DUMP"
    print "--------------------------------------------------"
    print "\n"
    os.chdir('..')
    manDmp = 'java -jar tools/AXML.jar  AndroidManifest.xml  >> Manifest.xml'
    os.system(manDmp)
    if os.path.isdir('Source-Java'):
        os.system('mv  Manifest.xml  Source-Java')
    os.system('rm AndroidManifest.xml')
    print "\n"
    print "\t[+] The parsed Manifest can be found as Manifest.xml"
    print "\n"
    print "----------------------------------------------------"
    print "\n"
