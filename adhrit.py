import zipfile
import os
import sys
import subprocess
import shlex
import argparse
import webbrowser
from Recons.apkRecon import apkRip
from Recons.apkExtract import apkInfo



__author__ = 'Abhishek J M  ( jmabhishek@gmail.com )'


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


    def apkripper(self, apk_name) :
        apkRip(apk_name)


    def apkextractor(self, apk_name) :
        apkInfo(apk_name)



#Main fuction starts here
def main() :

    adhrit = Adhrit()
    parser = argparse.ArgumentParser(description = "Help")
    parser.add_argument("-a", help="Dump package info and extract contents")
    parser.add_argument("-r", help="Analyze APK without extraction")
    parser.add_argument("-e", help="Extract APK contents only")
    args = parser.parse_args()

    if args.a :
        adhrit.Welcome()
        adhrit.apkripper(args.a)
       	adhrit.apkextractor(args.a)


    elif args.r :
        adhrit.Welcome()
        adhrit.apkripper(args.r)


    elif args.e :
        adhrit.Welcome()
        adhrit.apkextractor(args.e)



if __name__ == "__main__" :
    main()
