import os


class DepInstaller() :

    def __init__(self) :
        pass

    def Ins (self) :
        print "\n[+]  Installing necessary tools "
        try :
            os.system('sudo apt-get install toilet')
            print "\n[+]  Installation of dependencies complete"
        except OSError as ose :
            print "\n[!]  Error installing dependency"

        print "\n[+]  Installing ARM dependencies"
        try :
            os.system('sudo apt-get install libc6-armel-cross libc6-dev-armel-cross')
            os.system('sudo apt-get install binutils-arm-linux-gnueabi')
            os.system('sudo apt-get install libncurses5-dev')
            print "\n[+]  Installation of ARM tools complete"

        except OSError as ose :
            print "\n[!]  Error installing ARM dependencies"

        print "\n[+]  Installing Android debug tools "
        try :
            os.system('sudo apt-get install android-tools-adb')
            print "\n[+]  Installation of Android tools complete"
        except OSError as ose :
            print "\n[!]  Error installing Android tools"


def main() :
    dep = DepInstaller()
    dep.Ins()

if __name__ == '__main__' :
    main()
