import zipfile
import os
import sys
import argparse
import webbrowser



#Know all about the application.
def apkRip( apk_name ) :

    apk = zipfile.ZipFile(apk_name, 'r')
    os.system("mkdir -p Analysis")


    print "--------------------------------------------------------------------"
    print "\n"
    print "\n\t [+]  File input  :  " +apk.filename
    print "\n\n"
    print "\n"

    print "-----------------------  PACKAGE NAME  -----------------------------"
    print "\n"
    labelCmd = "./aapt dump badging " + apk_name + "| grep package:\ name"
    os.system(labelCmd)
    print "\n\n"

    print "-----------------------  PERMISSIONS  ------------------------------"
    print "\n"
    permCmd = "./aapt dump permissions "+apk_name + " | tee Permissions.txt"
    os.system(permCmd)
    if os.path.exists('Permissions.txt') :
        os.system('mv Permissions.txt Analysis')

    print "\n\n"

    print "-----------------------  MANIFEST INFO  ----------------------------"
    print "\n"
    confCmd = "./aapt dump badging "+apk_name
    os.system(confCmd)
    print "\n\n"
