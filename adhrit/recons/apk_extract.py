# !/usr/bin/env python3

import os
from time import sleep
from colorama import Fore
from shutil import rmtree




# To know the contents of a package
def extraction(apk_name, hash_of_apk):

	print(Fore.YELLOW + "\n--------------------------------------------------")
	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "MANIFEST DUMP")
	pwd = os.getcwd()
	path = str(pwd) + '/'+hash_of_apk

	os.makedirs(hash_of_apk)
	print('dir created')
	os.chdir(path)
	mandmp = 'java -jar ../adhrit/tools/apktool.jar d -sf ../app.apk -o ./manifest'
	os.system(mandmp)
	if os.path.isdir('manifest'):
		os.system('cp manifest/AndroidManifest.xml Manifest.xml')
		if os.path.isfile('manifest/res/values/strings.xml'):
			os.system('cp manifest/res/values/strings.xml strings.xml')
	os.system('rm -rf manifest/')


	print(Fore.YELLOW + "\n--------------------------------------------------")
	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "BYTECODE DUMP\n")

	smalicmd = 'java -jar ../adhrit/tools/apktool.jar d  -rf ../app.apk -o ./Bytecode'
	os.system(smalicmd)
	path = path + '/Bytecode'
	if os.path.isdir(path):
		print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Extraction complete")
		print(Fore.YELLOW + "\n--------------------------------------------------")
		print(Fore.GREEN + "[INFO] " + Fore.BLUE + "REMOVING UNWANTED FILES\n")

		files_in_dir = os.listdir(path)
		files_req = ['lib']
		for files in files_in_dir:
			if 'smali' in files:
				files_req.append(files)

		for files in files_in_dir:
			if files not in files_req:
				files = path+'/'+files
				try:
					os.remove(files)
				except:
					rmtree(files, ignore_errors = True)
		ignore_dirs = ['androidx','gms', 'appsflyer', 'installreferrer', 'ads' 'kotlin', 'kotlinx','fonts', 'crashlytics']
		for root, dirs, files in os.walk(path, topdown=True):
			for d in dirs:
				if d in ignore_dirs:
					rmtree(os.path.join(root, d))

		path = path + '/../..'
		os.chdir(path)