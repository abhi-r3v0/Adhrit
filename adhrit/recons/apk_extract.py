# !/usr/bin/env python3

import collections
import os
import traceback
import zipfile
from colorama import Fore
from shutil import rmtree
from adhrit.recons.enjarify import parsedex
from adhrit.recons.enjarify.jvm import writeclass
from adhrit.recons.enjarify.jvm.optimization import options
from adhrit.recons.enjarify.mutf8 import decode



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
		ignore_dirs = ['android', 'androidx', 'kotlin', 'kotlinx']
		files_in_dir = os.listdir(path)
		for files in files_in_dir:
			if 'smali' in files:
				files_sub_directory = os.listdir(path+'/'+files)
				for f in files_sub_directory:
					if f in ignore_dirs:
						rmtree(path+'/'+files+'/'+f)

		path = path + '/../..'
		os.chdir(path)




	

	
	# try:
	# 	if not os.path.exists(path):
	# 		os.makedirs(hash_of_apk)
	# 		print('dir created')
	# 		os.chdir(path)
	# 		mandmp = 'java -jar ../adhrit/tools/apktool.jar d -sf ../app.apk -o ./manifest'
	# 		os.system(mandmp)
	# 		if os.path.isdir('manifest'):
	# 			os.system('cp manifest/AndroidManifest.xml Manifest.xml')
	# 			os.system('cp manifest/AndroidManifest.xml api_scan/Manifest.xml')
	# 			if os.path.isfile('manifest/res/values/strings.xml'):
	# 				os.system('cp manifest/res/values/strings.xml strings.xml')
	# 				os.system('cp manifest/res/values/strings.xml api_scan/strings.xml')
	# 		os.system('rm -rf manifest/')
	# 		path = path + '/..'
	# 		os.chdir(path)
			
	# except OSError as err:
	# 	print('dir exist')

	# 	cmd ='rm -rf '+ hash_of_apk
	# 	os.system(cmd)

	# 	os.makedirs(hash_of_apk)
	# 	print('dir created')
	# 	os.chdir(path)
	# 	mandmp = 'java -jar ../adhrit/tools/apktool.jar d -sf ../app.apk -o ./manifest'
	# 	os.system(mandmp)
	# 	if os.path.isdir('manifest'):
	# 		os.system('cp manifest/AndroidManifest.xml Manifest.xml')
	# 		os.system('cp manifest/res/values/strings.xml strings.xml')	
	# 	os.system('rm -rf manifest/')
	# 	path = path + '/..'
	# 	os.chdir(path)





# 	nlc = 0
# 	apk = zipfile.ZipFile(apk_name, 'r')

# 	print(Fore.YELLOW + "\n--------------------------------------------------")
# 	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "EXTRACTING JAR")
# 	print("\n")

# 	dexs = []
# 	if apk_name.lower().endswith('.apk'):
# 		with zipfile.ZipFile(apk_name, 'r') as z:
# 			for name in z.namelist():
# 				if name.startswith('classes') and name.endswith('.dex'):
# 					dexs.append(z.read(name))
# 	else:
# 		dexs.append(read(apk_name))

# 	outname = apk_name.rpartition('/')[-1].rpartition('.')[0] + '-enjarify.jar'

# 	try:
# 		outfile = open(outname, mode='wb')
# 	except OSError:
# 		print('Error, output file already exists and --force was not specified.')
# 		print('To overwrite the output file, pass -f or --force.')
# 		return

# 	opts = options.PRETTY
# 	classes = collections.OrderedDict()
# 	errors = collections.OrderedDict()

# 	for data in dexs:
# 		translate(data, opts=opts, classes=classes, errors=errors)
# 	writeToJar(outfile, classes)
# 	outfile.close()
# 	print(Fore.BLUE + "\t[+] " + Fore.YELLOW + 'Output written to', Fore.BLUE + outname)

# 	for name, error in sorted(errors.items()):
# 		print(Fore.BLUE + "\t[!] " + Fore.RED + name + " had errors")
# 	print(Fore.BLUE + "\t[+] " + Fore.YELLOW + '{} classes translated successfully, {} classes had errors'.format(len(classes), len(errors)))

# 	print(Fore.BLUE + "\n\t\t[+] " + Fore.YELLOW + apk_name + "'s source has been extracted as jar")

# 	print(Fore.YELLOW + "\n--------------------------------------------------")
# 	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "EXTRACTING SOURCE")
# 	namesplit = apk_name.split('.')[0]
# 	# noinspection PyPep8
# 	javasrc = 'java -jar tools/cfr.jar  ' + namesplit + '-enjarify.jar' + ' --outputdir' + ' Source-Java' + ' 1> /dev/null 2> /dev/null'
# 	os.system(javasrc)
# 	print(Fore.BLUE + "\n\t[+]" + Fore.YELLOW + " Extraction complete. Check " + Fore.BLUE + 'Source-Java' + Fore.YELLOW + " directory.")

# 	if os.path.exists('Extracts') and os.path.isdir('Extracts'):
# 		os.system('rm -r Extracts')
# 	apk.extractall("Extracts")
# 	print(Fore.BLUE + "\n\t[+]" + Fore.YELLOW + " Extracted the file contents to directory : Extracts")
# 	jarcpy = 'mv ' + namesplit + '-enjarify.jar' + ' Extracts'
# 	os.system(jarcpy)
# 	print("\n")

# 	print(Fore.YELLOW + "\n--------------------------------------------------")
# 	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "EXTRACTED CONTENTS")
# 	print("\n")
# 	for content in os.listdir("Extracts"):
# 		print(Fore.BLUE + "\t[>] " + Fore.YELLOW + content)
# 	if os.path.exists('Extracts'):
# 		os.chdir('Extracts')
# 	os.system('cp AndroidManifest.xml ../')
# 	print("\n")

# 	print(Fore.YELLOW + "\n--------------------------------------------------")
# 	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "CERTIFICATE")
# 	print(Fore.YELLOW + "\n")
# 	os.system('openssl pkcs7 -inform DER -in META-INF/CERT.RSA -noout -print_certs -text | tee Certificate.txt ')
# 	print(Fore.BLUE + "\n\t[+]" + Fore.YELLOW + " Certificate details extracted to Certificate.txt")
# 	print("\n")

# 	print(Fore.YELLOW + "\n--------------------------------------------------")
# 	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "STRINGS")
# 	print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Executing Strings on classes.dex ")
# 	os.system('strings classes.dex > Strings1.txt')
# 	if os.path.exists('classes2.dex'):
# 		os.system('strings classes2.dex > Strings2.txt')
# 	print(Fore.BLUE + "\n\t[+]" + Fore.YELLOW + " Output written to " + Fore.BLUE + 'Strings.txt' + Fore.YELLOW + " found in the Extracts directory")
# 	print("\n")

# 	print(Fore.YELLOW + "\n--------------------------------------------------")
# 	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "NATIVE LIBRARIES")
# 	print("\n")
# 	directory = 'lib'
# 	for libdir, subdirList, libs in os.walk(directory):
# 		for fname in libs:
# 			if fname == '':
# 				nlc += 2
# 			else:
# 				print(Fore.BLUE + '\t[>] ' + Fore.YELLOW + '%s' % fname)
# 	if nlc > 0:
# 		print(Fore.RED + "\n\t[-] No native libraries found")
# 	print("\n")

	

	
		

# 	# os.system('rm AndroidManifest.xml')
# 	# print("\n")
# 	# print(Fore.BLUE + "\t[+]" + Fore.YELLOW + " The parsed Manifest can be found as Manifest.xml")
# 	# print("\n")


# def read(fname, mode='rb'):
# 	with open(fname, mode) as f:
# 		return f.read()


# # noinspection PyPep8Naming
# def translate(data, opts, classes=None, errors=None, allowErrors=True):
# 	dex = parsedex.DexFile(data)
# 	classes = collections.OrderedDict() if classes is None else classes
# 	errors = collections.OrderedDict() if errors is None else errors

# 	for cls in dex.classes:
# 		unicode_name = decode(cls.name) + '.class'
# 		if unicode_name in classes or unicode_name in errors:
# 			print('Warning, duplicate class name', unicode_name)
# 			continue

# 		# noinspection PyBroadException
# 		try:
# 			class_data = writeclass.toClassFile(cls, opts)
# 			classes[unicode_name] = class_data
# 		except Exception:
# 			if not allowErrors:
# 				raise
# 			errors[unicode_name] = traceback.format_exc()

# 	return classes, errors


# # noinspection PyPep8Naming
# def writeToJar(fname, classes):
# 	with zipfile.ZipFile(fname, 'w') as out:
# 		for unicode_name, data in list(classes.items()):
# 			# Don't bother compressing small files
# 			compress_type = zipfile.ZIP_DEFLATED if len(data) > 10000 else zipfile.ZIP_STORED
# 			info = zipfile.ZipInfo(unicode_name)
# 			info.external_attr = 0o775 << 16  # set Unix file permissions
# 			out.writestr(info, data, compress_type=compress_type)
