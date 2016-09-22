import zipfile
import os
import sys

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
    print "\n\n"
    if os.path.exists('Extracts') :
        os.chdir('Extracts')
    dexstrings = os.system("strings classes.dex")

#Main fuction starts here
if __name__ == "__main__" :
    apkInfo("app.apk")
