import zipfile
import os
import sys
import subprocess
import shlex
import argparse

class Dhruva :

    def __init__(self) :
        self.apk_name = ""

    #To know the contents of a package
    def apkInfo(self, apk_name) :
        apk = zipfile.ZipFile(apk_name, 'r')
        print "********************************************************************"
        print "\n\t [+]  Package :  " +apk.filename
        print("\n")

        print "********************** Extracting Source ***************************"
        dexCommand = 'sh JarConverter.sh '+apk_name
        os.system(dexCommand)
        print "\t[+] " +apk_name + "'s source has been extracted as jar"
        print "********************************************************************"


        apk.extractall("Extracts")
        print "\n\t [+]  Extracted the file contents to directory : Extracts"
        print "\n\n******************* Extracted Contents *************************"
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
            os.chdir("lib")
            for libs in os.listdir("lib") :
                print "[+]" +libs
        else :
            print "\n[-] No libraries found"

            print "\n********************************************************************"



#Main fuction starts here
def main() :

    dhruva = Dhruva()
    parser = argparse.ArgumentParser(description = "Help")
    parser.add_argument("-a", help="Perform an overall scanning on the apk")
    args = parser.parse_args()

    if args.a :
        dhruva.apkInfo(args.a)



if __name__ == "__main__" :
    main()
