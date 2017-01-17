import zipfile
import os
import sys
import argparse
import subprocess
import webbrowser



#To know the contents of a package
def apkInfo(apk_name) :

    apk = zipfile.ZipFile(apk_name, 'r')

    print "***********************  Extracting Jar  ***************************"
    print "\n"
    dexCommand = 'sh JarConverter.sh --force '+apk_name
    os.system(dexCommand)
    print "\t[+] " +apk_name + "'s source has been extracted as jar"
    print "\n\n"




    print "********************  Extracting java files  ***********************"
    print "\n"
    namesplit = apk_name.split('.')[0]
    javaSrc = 'java -jar jd-cli.jar  '+namesplit+'-dex2jar.jar' + ' -od '+ ' Source' + ' 1> /dev/null 2> /dev/null'
    os.system(javaSrc)
    print "\n Extraction complete. Java source files can be found in ' Source ' directory."
    print "\n"
    print "********************************************************************"
    print "\n"

    apk.extractall("Extracts")
    print "\n\t [+]  Extracted the file contents to directory : Extracts"
    jarcpy = 'mv ' + namesplit + '-dex2jar.jar' + ' Extracts'
    os.system(jarcpy)
    print "\n\n"




    print "********************* Extracted Contents ***************************"
    print "\n"
    for file in os.listdir("Extracts") :
        print "\t" +file
    if os.path.exists('Extracts') :
        os.chdir('Extracts')
    os.system('cp AndroidManifest.xml ../')
    print "\n\n"



    print "*************************  Certificate  ****************************"
    print "\n"
    os.system('openssl pkcs7 -inform DER -in META-INF/CERT.RSA -noout -print_certs -text | tee Certificate.txt ')
    print "Certificate details extracted to Certificate.txt"
    print "\n\n"



    print "*************************  Strings  ********************************"
    print "\n\t\t Executing Strings on classes.dex "
    dexstrings1 = os.system('strings classes.dex > Strings1.txt')
    if os.path.exists('classes2.dex') :
        dexstrings2 = os.system('strings classes2.dex > Strings2.txt')
    print "\n Output written to 'Strings.txt' found in the Extracts directory"
    print "\n\n"




    print "**********************  Native Libraries  **************************"
    print "\n"
    library = 'lib'
    if not os.path.exists("lib") :
        print "\n[-] No libraries found"

    elif os.path.exists("lib") :
        for libdir in os.listdir("lib") :
                print "[+]" +libdir
        newlibdir = libdir
        if os.path.isdir(newlibdir) :
            for libs in os.listdir(newlibdir) :
                print "[++]" +libs
    print "\n\n"



    print "*********************  Dumping Manifest  ***************************"
    print "\n"
    os.chdir('..')
    manDmp = 'java -jar AXML.jar  AndroidManifest.xml  | tee Manifest.xml'
    os.system(manDmp)
    os.system('mv  Manifest.xml  Source')
    os.system('rm AndroidManifest.xml')
    print "\n"
    print "The parsed Manifest can be found as Manifest.xml"
    print "\n\n"
    print "********************************************************************"
    print "\n\n\n"
