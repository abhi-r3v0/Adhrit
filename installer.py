# !/usr/bin/env python3

import os
import subprocess
from sys import platform


class dep_installer():

    def __init__(self):
        self.apt_tools = ['toilet', 'python-pip', 'python-setuptools', 'python3-pip', 'android-tools-adb', 'ia32-libs']
        self.pip_tools = ['prettytable', 'requests', 'progressbar2']
        self.arm_tools = ['libc6-armel-cross libc6-dev-armel-cross', 'binutils-arm-linux-gnueabi', 'libncurses5-dev']

    def ins(self):
        if platform == "linux" or platform == "linux2":
                # linux
            print("\n[+]  Installing necessary tools on Linux")
            try:
                for i in self.apt_tools:
                    p = subprocess.Popen(['sudo', 'apt-get', '-f', 'install', i], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    print(p.stderr.read())
                    print(("\t[+] Installed " + i))

                for j in self.pip_tools:
                    subprocess.Popen(['sudo', 'pip3', 'install', j], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    print(("\t[+] Installed " + j))
                print("\n[+]  Installation of dependencies complete")
            except OSError as ose:
                print("\n[!]  Error installing dependency")

            print("\n[+]  Installing ARM dependencies")
            try:
                for k in self.arm_tools:
                    subprocess.Popen(['sudo', 'apt-get', '-f', 'install', k], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                    print(("\t[+] Installed " + k))
                print("\n[+]  Installation of ARM tools complete")
            except OSError as ose:
                print("\n[!]  Error installing ARM dependencies")


        elif platform == "darwin":

            print("\n[+]  Installing necessary tools on MAC")
            try:
                os.system('brew install toilet')
                print("\n[+]  Installation of dependencies complete")
            except OSError as ose:
                print("\n[!]  Error installing dependency")

            print("\n[+]  Installing ARM dependencies")
            try:
                os.system('brew tap osx-cross/arm')
                os.system('brew install arm-gcc-bin')
                os.system('brew install binutils')
                os.system('brew install ncurses')
                print("\n[+]  Installation of ARM tools complete")
            except OSError as ose:
                print("\n[!]  Error installing ARM dependencies")

            print("\n[+]  Installing Android debug tools ")
            try:
                os.system('brew cask install android-platform-tools')
                print("\n[+]  Installation of Android tools complete")
            except OSError as ose:
                print("\n[!]  Error installing Android tools")

        elif platform == "win32":
                #TO-DO Windows
                print("\n[+]  Installing necessary tools on Windows")



def main():
    dep = dep_installer()
    dep.ins()

if __name__ == '__main__':
    main()
