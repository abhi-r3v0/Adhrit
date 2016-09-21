import zipfile


#To know the contents of a package
def apkInfo(apk_name) :
    apk = zipfile.ZipFile('app.apk', 'r')
    manifest = apk.read('AndroidManifest.xml')
    dex = apk.read('classes.dex')

    if dex :
        print "Dex found"

    if manifest :
        print "Manifest found"



#Main fuction starts here
if __name__ == "__main__" :
    apkInfo('app.apk')
