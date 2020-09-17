import configparser
import os
import re
import r2pipe
import base64
import glob
from colorama import Fore, Style
from adhrit.recons.dbaccess import dbconnection, create_secrets_table, insert_secretstable

decode_str_list = []

def lib_pwn():
	n = 0
	if os.path.exists('Bytecode'):
		binfilepath = glob.glob('Bytecode/lib/arme*')
		for i in binfilepath:
			print(i)
			if os.path.exists(i):

				binfiles = glob.glob(str(i) + '/*.so')

				for thelibfile in binfiles:
					print(Fore.GREEN + "\n\n[INFO]" + Fore.BLUE + " Analyzing " + Fore.GREEN + thelibfile)

					r = r2pipe.open(thelibfile)
					print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "Lib info")
					print(Fore.YELLOW)
					print("\t")
					print(r.cmd('i'))
					
					print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "Seaching for AES keys")
					print(Fore.YELLOW)
					print("\t") 
					aeskeys = r.cmd('/ca')
					if aeskeys == '':
						print(Fore.GREEN + "\t[!] " + Fore.YELLOW + "No AES Keys found\n")
					else:
						print(Fore.YELLOW + aeskeys + "\n")

					print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "[*] Sections")
					print(Fore.YELLOW)
					print("\t")
					print(r.cmd('fs'))

					print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "All Strings\n")
					allstrings = r.syscmdj('rabin2 -j -z ' + thelibfile)

					print(Fore.YELLOW)
					if allstrings != None:
						for key, value in allstrings.items():
							for valuedict in value:
								for i,j in valuedict.items():
									if(i == 'string'):
										n +=1
										print(Fore.BLUE + "\t[" + str(n) + "] " + Fore.YELLOW + str(base64.b64decode(j))[2:-1])
										decode_str_list.append(str(base64.b64decode(j))[2:-1])

	return decode_str_list



def url_scanner():

	final_urls = []

	ignore_urls = ['http://schemas.android.com/apk/res/android']

	print("\n[+] Scanning URLs\n")
	url_regex = 'https?://(?:[-\w.]|(?:%[\da-fA-F]{2}))+'
	urls = []
	dirname = 'Bytecode/smali'
	ignore_dirs = ['android', 'org', 'google', 'localytics', 'unknown', 'lib', 'AndroidManifest.xml', 'original']
	for dirList, subdirList, subfiles in os.walk(dirname):
			# noinspection PyAssignmentToLoopOrWithParameter
			for subfiles in ignore_dirs:
				os.system('rm -r ' + subfiles + ' 2> /dev/null')
			# noinspection PyAssignmentToLoopOrWithParameter
			for subdirList in ignore_dirs:
				os.system('rm -r ' + subdirList + ' 2> /dev/null')
			# noinspection PyAssignmentToLoopOrWithParameter
			for dirList in ignore_dirs:
				os.system('rm -r ' + dirList + ' 2> /dev/null')

	for dirList, subdirList, subfiles in os.walk(dirname):
		for files in subfiles:
			with open(os.path.abspath(os.path.join(dirList, files)), 'r') as f:
				for lines in f:
					if re.search(url_regex, lines):
						urls.append(lines)
						
	if urls:
		for url in urls:
			if (str(url.split()[2][1:-1]).startswith('https://') or str(url.split()[2][1:-1]).startswith('http://')):
				if(str(url.split()[2][1:-1]).startswith('https://') != 'http://schemas.android.com/apk/res/android'):
					final_urls.append(url.split()[2][1:-1])

	return final_urls


def get_config_data(key):
	check_deps = configparser.ConfigParser()
	check_deps.read('config')
	return check_deps.get('config-data', str(key))

def api_scanner():
	api_lists = []
	print("\n[+] Scanning API keys\n")
	root_dir = os.getcwd() + '/api_scan/'
	#Append the remaining regex here
	regex_dic = {'Google Maps API': re.compile(r'\bAIza.{35}\b')}

	scan_lists = [glob.glob(root_dir + "/**/*.smali", recursive = True), glob.glob(root_dir + "*.xml")]
	for scan_list in scan_lists:
		for file_path in scan_list:
			with open(file_path) as file:
				for line in file:
					for key in regex_dic:
						match =  regex_dic[key].findall(line)
						if match:
							api = "".join(match)
							file_name = file_path.rsplit('/', 1)[1]
							api_val = str(key) + ' : ' + str(file_name) + ' ['+api+']'
							api_lists.append(api_val)
	return api_lists



def secret_scanner():

	api_keys = []

	dbname = 'adhrit.db'
	dbconstatus = dbconnection(dbname)
	create_secrets_table(dbconstatus)
	thesid = get_config_data('scan_id')

	urls = url_scanner()

	# strings_from_lib = lib_pwn()
	strings_from_lib = ""
	print(str(strings_from_lib))
	api_keys.append(api_scanner())
	print(str(api_keys))

	allsecrets = (str(thesid), str(list(urls)), str(list(strings_from_lib)), str(list(api_keys)))
	addtotable = insert_secretstable(dbconstatus, allsecrets)


