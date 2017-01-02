import zipfile
import os
import sys
import subprocess
import shlex
import argparse

class Adhrit :

    def __init__(self) :
        self.apk_name = ""

    def Welcome(self) :
	print "\n\n"

	print "            @@@@	 @@ @@@@@@      @@		@@ @@@@@@@@ @@	 @@ @@@@@@ @@  @@@@@@@@@@@@@@@@@@@@	"
	print "           @@  @@         @@	  @@	@@	        @@	     @@	      @@	       @@               "
	print "          @@    @@	 @@	   @@	@@		@@	      @@      @@	       @@               "
	print "         @@      @@	 @@	    @@	@@		@@	      @@      @@	       @@               "
	print "        @@	 @@	 @@	     @@	@@		@@	      @@      @@	       @@               "
	print "       @@	  @@	 @@	      @@@@		@@	     @@	      @@	       @@		"
	print "      @@   	   @@	 @@	      @@@@ @@@@@@@@@@@@ @@ @@@@@@@@ @@	      @@	       @@		"
	print "     @@ @@@@@@@@@@@@ @@	 @@	      @@@@      	@@	   @@	      @@	       @@		"
	print "    @@		     @@	 @@	      @@@@		@@	    @@	      @@	       @@	        "
	print "   @@		      @@ @@	     @@	@@		@@	     @@	      @@	       @@	        "
	print "  @@		       @@@@	    @@	@@		@@            @@      @@	       @@		"
	print " @@		        @@@	   @@	@@		@@	       @@     @@	       @@		"
	print "@@			 @@ @@@@@@ @@	@@		@@		@@@ @@@@@@ @@          @@       	"

	print "\n\n"

	print "                                     www.github.com/abhi-r3v0/Adhrit "
	print "\n\n"



    #Know all about the application.
    def apkRip( self, apk_name ) :
	
	print "\n"
	print "**********************  Permissions  ***************************"
	print "\n"
	permCmd = "./aapt dump permissions "+apk_name	
    	os.system(permCmd)
	print "\n\n"

	#print "*******************  Obfuscation details  **********************"
	#print "\n"
	#confCmd = "./aapt"+apk_name
	#os.system(confCmd)
	print "\n\n"    





    #To know the contents of a package
    def apkInfo(self, apk_name) :

        apk = zipfile.ZipFile(apk_name, 'r')

        print "********************************************************************"
	print "\n"
        print "\n\t [+]  Package :  " +apk.filename
        print "\n\n"





        print "********************** Extracting Jar ***************************"
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
        #dexstrings = os.system('strings classes.dex | grep flag > Strings.txt')  Only for flags with 'flag'
        print "\n Output written to 'Strings.txt' found in the Extracts directory"
	print "\n\n"





        print "************************  Native Libraries  ************************"
	print "\n"
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

   
    
	



#Main fuction starts here
def main() :

    adhrit = Adhrit()
    parser = argparse.ArgumentParser(description = "Help")
    parser.add_argument("-a", help="Dump package info and extract source")
    parser.add_argument("-r", help="Analyze APK without extraction")
    args = parser.parse_args()

    if args.a :
	adhrit.Welcome()
        adhrit.apkRip(args.a)
       	adhrit.apkInfo(args.a)
        

    elif args.r :
	adhrit.Welcome()
        adhrit.apkRip(args.r)



if __name__ == "__main__" :
    main()
