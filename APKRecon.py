import zipfile
import os
import sys
import subprocess


#To know the contents of a package
def apkInfo(apk_name) :
    apk = zipfile.ZipFile(apk_name, 'r')
    print "********************************************************************"
    print "\n\t [+]  Package :  " +apk.filename
    #apk.printdir()

    '''info = apk.infolist()
    print info'''   #Prints the address of each element in the zip


    apk.extractall("Extracts")
    print "\n\t [+]  Extracted the file contents to directory : Extracts"
    print "\n\n***********************  Extracted Contents   **********************"
    for file in os.listdir("Extracts") :
        print "\t" +file
    if os.path.exists('Extracts') :
        os.chdir('Extracts')

    print "\n********************************************************************"
    print "\n\t\t Executing Strings on classes.dex "
    dexstrings = os.system('strings classes.dex > Strings.txt')
    #dexstrings = os.system('strings classes.dex | grep flag > Strings.txt')  Only for flags with 'flag'

    print "\n\n Output written to 'Strings.txt' found in the Extracts directory\n\n"

    flagstr = [ 'flag{' ]
    for i in flagstr :
        if i in open('Strings.txt').read() :
            print flagstr
        else :
            print "[-] Matching strings not found\n\n"

    print "\n************************  Native Libraries  ************************"

    if os.path.exists("lib") :
        for libs in os.listdir("lib") :
            print "[+]" +libs
    else :
        print "\n[-] No libraries found"
        os.chdir("lib")

    print "\n********************************************************************"

#Main fuction starts here
if __name__ == "__main__" :
    apkInfo("app.apk")
