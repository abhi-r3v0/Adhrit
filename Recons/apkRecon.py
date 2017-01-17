import zipfile
import os
import sys
import argparse
import webbrowser



#Know all about the application.
def apkRip( apk_name ) :

    f = open('Output.html', 'w')
    apk = zipfile.ZipFile(apk_name, 'r')
    os.system("mkdir -p Analysis")


    print "********************************************************************"
    print "\n"
    print "\n\t [+]  File input  :  " +apk.filename
    print "\n\n"
    print "\n"

    print "**********************  Package   ***************************"
    print "\n"
    labelCmd = "./aapt dump badging " + apk_name + "| grep package:\ name"
    os.system(labelCmd)
    print "\n\n"

    print "**********************  Permissions  ***************************"
    print "\n"
    permCmd = "./aapt dump permissions "+apk_name + " | tee Permissions.txt"
    os.system(permCmd)
    print "\n\n"

    print "************************  Manifest  *****************************"
    print "\n"
    confCmd = "./aapt dump badging "+apk_name
    os.system(confCmd)
    print "\n"
    os.system("mv Manifest.txt Analysis && mv Permissions.txt Analysis")
    print "\n"
    print " \t + + + + +   Manifest and permissions dump can be found in the 'Analysis' directory   + + + + +"
