# !/usr/bin/env python3

import os
import subprocess
import configparser
from sys import platform


class DepInstaller:

    def __init__(self):
        self.apt_tools = ['python-pip', 'python3-setuptools', 'python3-pip', 'android-tools-adb', 'toilet']
        self.pip_tools = ['PrettyTable', 'requests', 'progressbar2', 'colorama', 'urllib3', 'Jinja2', 'r2pipe', 'smalisca', 'cement==2.10.12']
        self.uninstalled = []

    def ins(self):
        confparser = configparser.ConfigParser()
        confparser.read('config')

        # *nix Dependency Config
        if platform == "linux" or platform == "linux2":
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

            if len(self.uninstalled) > 0:
                print("\n[-] " + str(len(self.uninstalled)) + " not installed.")
            else:
                confparser.set('config-data', 'dependencies_status', 'complete')
                with open('config', 'w') as updatedconf:
                    confparser.write(updatedconf)
                print("\n[+] Installation of requirements complete. Check with 'python3 adhrit.py -h'")
       
        # MacOS Dependency Config             
        elif platform == "darwin":

            print("\n[+]  Installing necessary tools on MacOS/Darwin")
            try:
                os.system('brew cask install xquartz')
                os.system('export HOMEBREW_NO_AUTO_UPDATE=1') # Set auto update of homebrew to false for this session
                os.system('brew install toilet')
                print("\n[+]  Installation of dependencies complete")
            except OSError:
                print("\n[!]  Error installing dependency")


            print("\n[+]  Installing Android debug tools ")
            try:
                os.system('brew cask install android-platform-tools')
                print("\n[+]  Installation of Android tools complete")
            except OSError:
                print("\n[!]  Error installing Android tools")
                self.uninstalled.append("Android Debug Tools")

            try:
                for j in self.pip_tools:
                    subprocess.check_output(['sudo', 'pip3', 'install', j], stderr=subprocess.PIPE)
                    print("\t[+] Installed " + j)
            except subprocess.CalledProcessError as ose:
                print(ose)
                print("\n[!]  Error installing dependencies")

            if len(self.uninstalled) > 0:
                print("\n[-] " + str(len(self.uninstalled)) + " not installed.")
            else:
                confparser.set('config-data', 'dependencies_status', 'complete')
                with open('config', 'w') as updatedconf:
                    confparser.write(updatedconf)
                print("\n[+] Installation of MacOS dependencies complete. Check with 'python3 adhrit.py -h'")
       
        # TO-DO: Windows Config            
        elif platform == "win32":
                print("\n[+]  Installing necessary tools on Windows")



def main():
    dep = DepInstaller()
    dep.ins()

if __name__ == '__main__':
    main()
