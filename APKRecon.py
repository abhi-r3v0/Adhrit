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
        dexCommand = 'sh JarConverter.sh --force '+apk_name
        os.system(dexCommand)
        print "\t[+] " +apk_name + "'s source has been extracted as jar"



	print "\n********************  Extracting java files  ***********************"
	namesplit = apk_name.split('.')[0]
	javaSrc = 'java -jar jd-cli.jar  '+namesplit+'-dex2jar.jar' + ' -od '+ ' Source' + ' 1> /dev/null 2> /dev/null'
	os.system(javaSrc)
	print "\n Extraction complete. Java source files can be found in ' Source ' folder."
	
        print "********************************************************************"


        apk.extractall("Extracts")
        print "\n\t [+]  Extracted the file contents to directory : Extracts"
        jarcpy = 'mv ' + namesplit + '-dex2jar.jar' + ' Extracts'
        os.system(jarcpy)

        print "\n\n******************* Extracted Contents *************************"
        for file in os.listdir("Extracts") :
            print "\t" +file
        if os.path.exists('Extracts') :
            os.chdir('Extracts')

        print "\n********************************************************************"
        print "\n\t\t Executing Strings on classes.dex "
        dexstrings1 = os.system('strings classes.dex > Strings1.txt')
	if os.path.exists('classes2.dex') :
		dexstrings2 = os.system('strings classes2.dex > Strings2.txt')
        #dexstrings = os.system('strings classes.dex | grep flag > Strings.txt')  Only for flags with 'flag'

        print "\n\n Output written to 'Strings.txt' found in the Extracts directory\n\n"


        print "\n************************  Native Libraries  ************************"

	if not os.path.exists("lib") :
        	print "\n[-] No libraries found"

        elif os.path.exists("lib") :
        	for libdir in os.listdir("lib") :
                	print "[+]" +libdir
			newlibdir = libdir
			if os.path.isdir(newlibdir) :
				for libs in os.listdir(newlibdir) :
					print "[++]" +libs

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
