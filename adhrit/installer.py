# !/usr/bin/env python3

import os
import subprocess
import configparser
from sys import platform


class DepInstaller:

	def __init__(self):
		self.apt_tools = ['python-pip', 'python3-setuptools', 'python3-pip', 'android-tools-adb', 'toilet']
		self.pip_tools = ['PrettyTable', 'requests', 'progressbar2', 'colorama', 'urllib3', 'r2pipe', 'smalisca', 'cement==2.10.12', 'Flask==1.1.2' ]
		self.uninstalled = []
	

	def ins(self):
		

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
				set_config_data('dependencies_status', 'complete')
	   
		# MacOS Dependency Config             
		elif platform == "darwin":

			print("\n[+]  Installing necessary tools on MAC")
			try:
			    os.system('brew cask install xquartz')
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

		   

			print("\n[+]  Installing node ")
			try:
			    os.system('brew install node')
			    print("\n[+]  Installation of node complete")
			except OSError:
			    print("\n[!]  Error installing node")
			    self.uninstalled.append("node")
			
			

			print("\n[+]  Installing angular-cli  ")
			try:
			    os.system('brew install angular-cli')
			    print("\n[+]  Installation of angular-cli complete")
			except OSError:
			    print("\n[!]  Error installing angular-cli")
			    self.uninstalled.append("angular-cli")

			
			try:
				for j in self.pip_tools:
					subprocess.check_output(['sudo', 'pip3', 'install', j], stderr=subprocess.PIPE)
					print("\t[+] Installed " + j)

			except subprocess.CalledProcessError as ose:
				print(ose)
				print("\n[!]  Error installing dependencies")
		   

			print("\n[+]  Installing node dependencies ")
			try:
				working_dir = os.getcwd()
				os.chdir(working_dir + '/frontend')
				os.system('npm install')
				os.chdir(working_dir)
				print("\n[+]  Installation of node dependencies complete")
			except OSError:
				print("\n[!]  Error installing node dependencies")
				self.uninstalled.append("node-dependencies")


			if len(self.uninstalled) > 0:
				print("\n[-] " + str(len(self.uninstalled)) + " not installed.")
			else:
				set_config_data('dependencies_status', 'complete')

	   
		# TO-DO: Windows Config            
		elif platform == "win32":
				print("\n[+]  Installing necessary tools on Windows")

def get_config_data(key):
	check_deps = configparser.ConfigParser()
	check_deps.read('config')                                         
	return check_deps.get('config-data', str(key))

def set_config_data(key, value):
	update_config = configparser.ConfigParser()
	update_config.read('config')
	update_config.set('config-data', str(key), str(value))
	with open('config', 'w') as updatedconf:
			update_config.write(updatedconf)

def main():
	dep = DepInstaller()
	dep.ins()

if __name__ == '__main__':
	main()
