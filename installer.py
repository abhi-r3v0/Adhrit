# !/usr/bin/env python3

import os
import subprocess
from sys import platform


class DepInstaller:

    def __init__(self):
        self.apt_tools = ['python-pip', 'python3-setuptools', 'python3-pip', 'android-tools-adb', 'lib32ncurses5', 'lib32z1', 'toilet']
        self.pip_tools = ['PrettyTable', 'requests', 'progressbar2', 'colorama', 'urllib3']
        self.arm_tools = ['libc6-armel-cross', 'libc6-dev-armel-cross', 'binutils-arm-linux-gnueabi', 'libncurses5-dev']
        self.uninstalled = []

    def ins(self):
        if platform == "linux" or platform == "linux2":
                # linux
            print("\n[+]  Installing necessary tools on Linux\n")
            for i in self.apt_tools:
                try:
                    subprocess.check_output(['sudo', 'apt-get', '-f', 'install', i], stderr=subprocess.PIPE)
                    print("\t[+] Installed " + i)
                except subprocess.CalledProcessError:
                    print("\t\t[!] Error installing " + i + ". Please install manually: 'sudo apt-get -f install " + i + "'")
                    self.uninstalled.append(i)
                    pass

            for j in self.pip_tools:
                try:
                    subprocess.check_output(['sudo', 'pip3', 'install', j], stderr=subprocess.PIPE)
                    print("\t[+] Installed " + j)
                except subprocess.CalledProcessError:
                    print("\t\t[!] Error installing " + j + ". Please install manually: 'sudo pip3 install " + j + "'")
                    self.uninstalled.append(j)
                    pass

            for k in self.arm_tools:
                try:
                    subprocess.check_output(['sudo', 'apt-get', '-f', 'install', k], stderr=subprocess.PIPE)
                    print("\t[+] Installed " + k)
                except subprocess.CalledProcessError:
                    print("\t\t[!] Error installing " + k + ". Please install manually: 'sudo apt-get -f install " + k + "'")
                    self.uninstalled.append(k)
                    pass

            if len(self.uninstalled) > 0:
                print("\n[-] " + str(len(self.uninstalled)) + " not installed.")
            else:
                print("\n[+] Installation of requirements complete.")

        elif platform == "darwin":

            print("\n[+]  Installing necessary tools on MAC")
            try:
                os.system('brew install toilet')
                print("\n[+]  Installation of dependencies complete")
            except OSError:
                print("\n[!]  Error installing dependency")

            print("\n[+]  Installing ARM dependencies")
            try:
                os.system('brew tap osx-cross/arm')
                os.system('brew install arm-gcc-bin')
                os.system('brew install binutils')
                os.system('brew install ncurses')
                print("\n[+]  Installation of ARM tools complete")
            except OSError:
                print("\n[!]  Error installing ARM dependencies")

            print("\n[+]  Installing Android debug tools ")
            try:
                os.system('brew cask install android-platform-tools')
                print("\n[+]  Installation of Android tools complete")
            except OSError:
                print("\n[!]  Error installing Android tools")

            try:
                for j in self.pip_tools:
                    subprocess.check_output(['sudo', 'pip3', 'install', j], stderr=subprocess.PIPE)
                    print("\t[+] Installed " + j)
            except subprocess.CalledProcessError as ose:
                print(ose)
                print("\n[!]  Error installing dependencies")

        elif platform == "win32":
                # TO-DO Windows
                print("\n[+]  Installing necessary tools on Windows")


def main():
    dep = DepInstaller()
    dep.ins()

if __name__ == '__main__':
    main()
