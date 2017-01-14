import zipfile
import os
import sys
import argparse
import webbrowser



#To know the contents of a package
def apkInfo(apk_name) :

    apk = zipfile.ZipFile(apk_name, 'r')

    print "**********************  Extracting Jar  ***************************"
    print "\n"
    dexCommand = 'sh JarConverter.sh --force '+apk_name
    os.system(dexCommand)
    print "\t[+] " +apk_name + "'s source has been extracted as jar"
    print "\n\n"





    print "*******************  Extracting java files  **********************"
    print "\n"
    namesplit = apk_name.split('.')[0]
    javaSrc = 'java -jar jd-cli.jar  '+namesplit+'-dex2jar.jar' + ' -od '+ ' Source' + ' 1> /dev/null 2> /dev/null'
    os.system(javaSrc)
    print "\n Extraction complete. Java source files can be found in ' Source ' folder."
    print "\n"
    print "******************************************************************"
    print "\n"

    apk.extractall("Extracts")
    print "\n\t [+]  Extracted the file contents to directory : Extracts"
    jarcpy = 'mv ' + namesplit + '-dex2jar.jar' + ' Extracts'
    os.system(jarcpy)
    print "\n\n"





    print "******************* Extracted Contents ***************************"
    print "\n"
    for file in os.listdir("Extracts") :
        print "\t" +file
    if os.path.exists('Extracts') :
        os.chdir('Extracts')
    print "\n\n"





    print "************************  Strings  ********************************"
    print "\n\t\t Executing Strings on classes.dex "
    dexstrings1 = os.system('strings classes.dex > Strings1.txt')
    if os.path.exists('classes2.dex') :
        dexstrings2 = os.system('strings classes2.dex > Strings2.txt')
    print "\n Output written to 'Strings.txt' found in the Extracts directory"
    print "\n\n"




    print "************************  Native Libraries  ************************"
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

    print "\n"
    print "**********************************************************************"
    print "\n\n\n"
