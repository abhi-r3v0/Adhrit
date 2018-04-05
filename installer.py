# !/usr/bin/env python

import os
from sys import platform


class dep_installer():

    def ins(self):
        if platform == "linux" or platform == "linux2":
                # linux
            print "\n[+]  Installing necessary tools on Linux"
            try:
                os.system('sudo apt-get install toilet')
                print "\n[+]  Installation of dependencies complete"
            except OSError as ose:
                print "\n[!]  Error installing dependency"

            print "\n[+]  Installing ARM dependencies"
            try:
                os.system('sudo apt-get install libc6-armel-cross libc6-dev-armel-cross')
                os.system('sudo apt-get install binutils-arm-linux-gnueabi')
                os.system('sudo apt-get install libncurses5-dev')
                print "\n[+]  Installation of ARM tools complete"
            except OSError as ose:
                print "\n[!]  Error installing ARM dependencies"

            print "\n[+]  Installing Android debug tools "
            try:
                os.system('sudo apt-get install android-tools-adb')
                print "\n[+]  Installation of Android tools complete"
            except OSError as ose:
                print "\n[!]  Error installing Android tools"

        elif platform == "darwin":

            print "\n[+]  Installing necessary tools on MAC"
            try:
                os.system('brew install toilet')
                print "\n[+]  Installation of dependencies complete"
            except OSError as ose:
                print "\n[!]  Error installing dependency"

            print "\n[+]  Installing ARM dependencies"
            try:
                os.system('brew install libc6-armel-cross libc6-dev-armel-cross')
                os.system('brew install binutils-arm-linux-gnueabi')
                os.system('brew install libncurses5-dev')
                print "\n[+]  Installation of ARM tools complete"
            except OSError as ose:
                print "\n[!]  Error installing ARM dependencies"

            print "\n[+]  Installing Android debug tools "
            try:
                os.system('brew brew cask install android-platform-tools')
                print "\n[+]  Installation of Android tools complete"
            except OSError as ose:
                print "\n[!]  Error installing Android tools"

        elif platform == "win32":
                #Windows
                print "\n[+]  Installing necessary tools on Windows"



def main():
    dep = dep_installer()
    dep.ins()

if __name__ == '__main__':
    main()
