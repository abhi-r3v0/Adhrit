import configparser
import os
import re
import r2pipe
import base64
import glob
from colorama import Fore, Style
from adhrit.recons.dbaccess import dbconnection, create_secrets_table, insert_secretstable

decode_str_list = []

def isBase64(s):
    try:
        return base64.b64encode(base64.b64decode(s)) == s
    except Exception:
        return False

def lib_pwn():
	n = 0
	if os.path.exists('Bytecode'):
		binfilepath = glob.glob('Bytecode/lib/arme*')
		try:
			gotbinfilepath = binfilepath[0]
		except IndexError:
			gotbinfilepath = 'none'
		if os.path.exists(gotbinfilepath):

			binfiles = glob.glob(str(gotbinfilepath) + '/*.so')

			for thelibfile in binfiles:
				print(Fore.GREEN + "\n\n[INFO]" + Fore.BLUE + " Analyzing " + Fore.GREEN + thelibfile)

				r = r2pipe.open(thelibfile)
				
				print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "Seaching for AES keys")
				print(Fore.YELLOW)
				print("\t") 
				aeskeys = r.cmd('/ca')
				if aeskeys == '':
					print(Fore.GREEN + "\t[!] " + Fore.YELLOW + "No AES Keys found\n")
				else:
					print(Fore.YELLOW + aeskeys + "\n")

				print(Fore.GREEN + "\n[INFO] " + Fore.BLUE +  "All Strings\n")
				allstrings = r.cmdj('rabin2 -z -j ' + thelibfile)

				print(Fore.YELLOW)
				if allstrings != None:
					for key, value in allstrings.items():
						for valuedict in value:
							for i,j in valuedict.items():
								if(i == 'string'):
									if(isBase64(j)):
										n +=1
										print(Fore.BLUE + "\t[" + str(n) + "] " + Fore.YELLOW + str(base64.b64decode(j))[2:-1])
										decode_str_list.append(str(base64.b64decode(j))[2:-1])

	return decode_str_list



def url_scanner():

	print("\n[+] Scanning URLs\n")
	root_dir = os.getcwd() 
	scan_lists = [ glob.glob(root_dir + "/*.xml"), glob.glob(root_dir + "/**/*.smali", recursive = True)]
	new_scan_list = []
	url_regex = r"(http|ftp|https|file):\/\/([\w\-_]+(?:(?:\.[\w\-_]+)+))([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?"
	ignore_url = ["android.com",]
	ignore_dir = ['android/', 'org/', 'google/', 'localytics/', 'lib/', 'AndroidManifest.xml','juspay/']
	final_urls = []


	# Filtering scaning list 
	for scan_list in scan_lists:
		for each_item in scan_list:
			if any(ignore in each_item for ignore in ignore_dir):
				continue
			else:
				new_scan_list.append(each_item)
	
	for file_path in new_scan_list:
		with open(file_path) as file:
			for line in file:
					match = re.compile(url_regex).findall(line)
					if match:
						tup = match[0]
						url = str(tup[0])+'://'+(str(tup[1])+str(tup[2])) 
						if any(ignore in url for ignore in ignore_url):
							continue
						else:
							final_urls.append(url)
	

	return set(final_urls)


def get_config_data(key):
	check_deps = configparser.ConfigParser() #re.compile(r'\b\b')
	check_deps.read('config')
	return check_deps.get('config-data', str(key))

def api_scanner():
	api_lists = []
	print("\n[+] Scanning API keys\n")
	root_dir = os.getcwd()
	#Append the remaining regex here
	regex_dic = {'Google Maps API': re.compile(r'\bAIza.{35}\b'),
				'Twitter Access Token': re.compile(r'\b[1-9][ 0-9]+-\(0-9a-zA-Z]{40}\b'), 
				'Facebook Access Token': re.compile(r'\bEAACEdEose0cBA[0-9A-Za-z]+\b'), 
				'Gmail OAuth 2.0': re.compile(r'\b[0-9(+-[0-9A-Za-z_]{32}.apps.qooqleusercontent.com\b'), 
				'Stripe	Restricted API Key': re.compile(r'\bsk_live_\(0-9a-zA-Z]{24}\b'),
				'Square	OAuth Secret': re.compile(r'\bq0csp-[ 0-9A-Za-z-_]{43}\b'),
				'Paypal/Braintree Access Token': re.compile(r'\baccess_token,production$[0-9a-z]{161[0-9a,]{32}\b'),
				'Amazon Marketing Services Auth Token': re.compile(r'\bamzn.mws]{8}-[0-9a-f]{4}-10-9a-f1{4}-[0-9a,]{4}-[0-9a-f]{12}\b'),
				'Twilio	API Key': re.compile(r'\b55[0-9a-fA-F]{32}\b'),
				'Slack	API Key': re.compile(r'\bxox.-[0-9]{12}-[0-9]{12}-[0-9a-zA-Z]{24}\b'),
				'AWS Access Key ID': re.compile(r'\bAKIA[0-9A-Z]{16}\b')
				}


	scan_lists = [glob.glob(root_dir + "/**/*.smali", recursive = True), glob.glob(root_dir + "/*.xml")]
	for scan_list in scan_lists:
		for file_path in scan_list:
			with open(file_path) as file:
				for line in file:
					for key in regex_dic:
						match =  regex_dic[key].findall(line)
						if match:
							api = "".join(match)
							file_name = file_path.rsplit('/', 1)[1]
							api_val = str(key) + ' : ' + str(file_name) + ' ==> '+api
							api_lists.append(api_val)
	return set(api_lists)



def secret_scanner(hash_of_apk):

	api_keys = []

	dbname = 'adhrit.db'
	dbconstatus = dbconnection(dbname)
	create_secrets_table(dbconstatus)


	path = hash_of_apk
	os.chdir(path)
	urls = url_scanner()
	
	strings_from_lib = lib_pwn()
	# print(str(strings_from_lib))
	api_keys.extend(api_scanner())
	# print(str(api_keys))
	path = os.getcwd() + '/..'
	os.chdir(path)
	


	allsecrets = (str(hash_of_apk), str(list(urls)), str(strings_from_lib), str(list(api_keys)))
	addtotable = insert_secretstable(dbconstatus, allsecrets)


