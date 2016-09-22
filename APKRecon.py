import zipfile
import os


#To know the contents of a package
def apkInfo(apk_name) :
    apk = zipfile.ZipFile(apk_name, 'r')
    manifest = apk.read('AndroidManifest.xml')
    dex = apk.read('classes.dex')

    if dex :
        print "Dex found"

    if manifest :
        print "Manifest found"

    apk.extractall("Extracts")
    print "Extracted the file contents to directory : Extracts"


#Main fuction starts here
if __name__ == "__main__" :
    apkInfo("app.apk")
