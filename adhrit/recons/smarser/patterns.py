import os
import json
import requests
from collections import OrderedDict
from colorama import Fore
# from modules.slack_push import slack_prep

js_enabled_list = set()
ecb_usage_list = set()
search_dynamic_list = set()
empty_pend_list = set()
sys_broadcast_list = set()
tls_validity_list = set()
insecure_socket_list = set()
list_of_unenc_soc = set()
list_of_http_con = set()
unsafe_intent_list = set()
list_of_cookie_overwrite = set()
url_allowed_list = set()
content_allowed_list = set()
ssl_warn_list = set()
weak_checks_list = set()


slack_unsafe_intent = []
slack_allow_file = []
slack_allow_content = []
slack_unenc_socket_comm = []
slack_insecure_sock = []
slack_tls_validity = []
slack_sys_broadcast = []
slack_empty_pending = []
slack_dynamic_receiver = []
slack_ecb = []
slack_js = []
slack_cookie_overwrite = []
slack_weak_dyn_checks = []

toslackstring = '```'


webhook_url = 'https://hooks.slack.com/services/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'


def search_js_enabled(thefile, thelist):

	if(os.path.exists('Bytecode')):
		linecount = 0
		revlinecount = 0
		for k in thelist:
			flag = 0
			for ckey, cval in k.items():

				if(ckey == "to_method" and str(cval) == "setJavaScriptEnabled"):
					flag = 1

				if flag == 1:
					if(ckey == "local_args"):
						varbool = str(cval.strip('{').strip('}')).split(',')[-1]

						tosearch = 'const/4' + varbool

						searchfile = open(thefile, "r")
						
						for line in searchfile:
							linecount += 1
							if 'setJavaScriptEnabled' in line:
								foundat = linecount

						tosearchfromline = linecount - foundat

						for revline in reversed(list(open(thefile))):
							revlinecount += 1
							if revlinecount > tosearchfromline:
								if tosearch in revline:
									stat = revline.split(',')[-1].strip()
									if str(stat) == '0x1':
										js_enabled_list.add(str(thefile))
										return(thefile)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "Javascript is disabled")

	else:
		print("\n\t[!] Bytecode not found!")



def search_ecb(thefile, thelist):	
	linecount = 0
	# print(Fore.BLUE + "\n\t[!] " + Fore.YELLOW + "Checking for Crypto Issues")
	if(os.path.exists('Bytecode')):

		for k in thelist:
			for kkey, kvalue in k.items():
				if "AES/ECB" in str(kvalue):
					searchfile = open(thefile, "r")
					for line in searchfile:
							linecount += 1
							if 'AES/ECB' in line:
								foundat = linecount
								ecb_usage_list.add(str(thefile))

	else:
		print("\n\t[!] Bytecode not found!")

	return(ecb_usage_list)


def search_dynamic_receiver(thefile, thelist):

	# print(Fore.BLUE + "\n\t[!] " + Fore.YELLOW + "Checking for Exported Dynamic Broadcast Receiver")
	if(os.path.exists('Bytecode')):
		if not ('android/support' in str(thefile)):
			for k in thelist:
				flag = 0
				for ckey, cval in k.items():
					if(ckey == "to_method" and str(cval) == "registerReceiver"):
						flag = 1

					if flag == 1:
						if(ckey == "local_args"):
							args = str(cval.strip('{').strip('}')).split(',')
							if len(args) == 3:
								search_dynamic_list.add(str(thefile))
	return(search_dynamic_list)


def empty_pending_intent(thefile, thelist):

	if(os.path.exists('Bytecode')):
		goto = 0
		linecount = 0
		foundat = 0
		revlinecount = 0
		for k in thelist:
			flag = 0
			ko = OrderedDict(k)
			for ckey, cval in ko.items():
				
				# print(str(ckey) + " : " + str(cval))
				if ckey == 'to_class' and cval == 'Landroid/app/PendingIntent':
					flag = 1

					searchfile = open(thefile, "r")
						
					for line in searchfile:
						linecount += 1
						if 'Landroid/app/PendingIntent' and 'getService' in line:
							foundat = linecount
							empty_pend_list.add(str(thefile))

	return(empty_pend_list)


def sys_broadcast_receiver(thefile, thelist):

	if(os.path.exists('Bytecode')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_method" and str(cval) == "sendStickyBroadcast"):
					sys_broadcast_list.add(str(thefile))

	return(sys_broadcast_list)


def check_tls_validity(thefile, thelist):
	
	flag = 0
	if(os.path.exists('Bytecode')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_class" and str(cval) == "Ljava/security/cert/X509Certificate"):
					flag = 1

				if flag == 1:
					if ckey == "to_method":
						if not str(cval) == "checkValidity":
							tls_validity_list.add(str(thefile))

	return(tls_validity_list)


def insecure_socket_factory(thefile, thelist):

	flag = 0
	if(os.path.exists('Bytecode')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_class" and str(cval) == "Landroid/net/SSLCertificateSocketFactory"):
					flag = 1

				if flag == 1:
					if ckey == "to_method" and str(cval) == "getInsecure":
						insecure_socket_list.add(str(thefile))

	return(insecure_socket_list)
						

def unenc_socket_comm(thefile, thelist):
	flag = 0
	found = 0
	flaginet = 0
	flagssl = 0
	if(os.path.exists('Bytecode')):
		f = open(thefile, 'r')
		linecount = 0
		for theline in f:
			linecount += 1
			if "Ljava/net/Socket" or "Ljava/net/InetSocketAddress" or "Ljava/net/SocketAddress" or "Ljavax/net/SocketFactory" in theline:
				flaginet = 1
				found = linecount

			if flaginet == 1:
				while linecount > found:
					if "Ljavax/net/ssl/SSLSocket" or "Ljavax/net/ssl/SSLSocket;->connect" or "Ljavax/net/ssl/SSLSocket;->isConnected" in theline:
						flagssl += 1
						list_of_unenc_soc.add(thefile)

	return(list_of_unenc_soc)
			

def http_con(thefile, thelist):
	if(os.path.exists('Bytecode')):
		flag = 0
		found = 0
		instances = 0
		f = open(thefile, 'r')
		linecount = 0
		for theline in f:
			linecount += 1
			if not (thefile.startswith('//')) or not (thefile.startswith('/*')):
				if 'http://' in theline:
					flag += 1
					found = linecount
					list_of_http_con.add(str(thefile))

	return(list_of_http_con)


def unsafe_intent_url(thefile, thelist):
	
	if(os.path.exists('Bytecode')):
		foundintenturi = 0
		foundaction = 0
		foundpackage = 0
		for k in thelist:
			flag = 0
			for ckey, cval in k.items():

				if(ckey == "to_method" and str(cval) == "parseUri"):
					foundintenturi = 1
				else:
					pass

				if foundintenturi == 1:
					if not (ckey == "to_method" and str(cval) == "getAction"):
						foundaction = 1
						
				if foundaction == 1:
					if not (ckey == "to_method" and str(cval) == "getPackage"):
						foundpackage = 1
						

		if foundaction == 1:
			print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Unsafe URI Parsing! No URI Action Defined\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
			unsafe_intent_list.add(str(thefile))

		if foundpackage == 1:
			print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Unsafe URI Parsing! Package Verification Missing\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
			unsafe_intent_list.add(str(thefile))

	return(unsafe_intent_list)


def cookie_overwrite(thefile, thelist):
	
	if(os.path.exists('Bytecode')):
		prev_file = ''
		setcookiestat = 0
		acceptcookie = 0
		cookieusage = 0
		linecount = 0
		revlinecount = 0
		for k in thelist:
			flag = 0
			for ckey, cval in k.items():

				if(ckey == "to_class" and str(cval) == "Landroid/webkit/CookieManager"):
					flag = 1

				if flag == 1:
					if(ckey == "to_method" and str(cval) == 'getInstance'):
						cookieusage = 1

				if cookieusage == 1:
					if(ckey == 'to_method' and str(cval) == 'setAcceptCookie'):
						acceptcookie = 1
					else:
						acceptcookie = 2

				if acceptcookie == 1:
					if(ckey == 'local_args'):
						varbool = str(cval.strip('{').strip('}')).split(',')[-1]
						tosearch = 'const/4' + varbool

						searchfile = open(thefile, "r")

						for line in searchfile:
							linecount += 1
							if 'setAcceptCookie' in line:
								foundat = linecount

						tosearchfromline = linecount - foundat

						for revline in reversed(list(open(thefile))):
							prev_file = str(thefile)
							revlinecount += 1
							if revlinecount > tosearchfromline:
								if tosearch in revline:
									stat = revline.split(',')[-1].strip()
									if str(stat) == '0x1':
										list_of_cookie_overwrite.add(str(thefile))

				if acceptcookie == 2:			
					list_of_cookie_overwrite.add(str(thefile))
					continue

				if acceptcookie == 0:
					continue

	return(list_of_cookie_overwrite)


def allow_file_from_url(thefile, thelist):

	if(os.path.exists('Bytecode')):
		linecount = 0
		revlinecount = 0
		for k in thelist:
			flag = 0
			for ckey, cval in k.items():

				if(ckey == "to_method" and str(cval) == "setAllowFileAccessFromFileURLs"):
					flag = 1

				if flag == 1:
					if(ckey == "local_args"):
						varbool = str(cval.strip('{').strip('}')).split(',')[-1]

						tosearch = 'const/4' + varbool

						searchfile = open(thefile, "r")
						
						for line in searchfile:
							linecount += 1
							if 'setAllowFileAccessFromFileURLs' in line:
								foundat = linecount

						tosearchfromline = linecount - foundat

						for revline in reversed(list(open(thefile))):
							revlinecount += 1
							if revlinecount > tosearchfromline:
								if tosearch in revline:
									stat = revline.split(',')[-1].strip()
									if str(stat) == '0x1':
										url_allowed_list.add(str(thefile))
										return(url_allowed_list)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "File Access from URLs Restricted")


def allow_content_from_url(thefile, thelist):

	if(os.path.exists('Bytecode')):
		linecount = 0
		revlinecount = 0
		for k in thelist:
			flag = 0
			for ckey, cval in k.items():

				if(ckey == "to_method" and str(cval) == "setAllowUniversalAccessFromFileURLs"):
					flag = 1

				if flag == 1:
					if(ckey == "local_args"):
						varbool = str(cval.strip('{').strip('}')).split(',')[-1]

						tosearch = 'const/4' + varbool

						searchfile = open(thefile, "r")
						
						for line in searchfile:
							linecount += 1
							if 'setAllowUniversalAccessFromFileURLs' in line:
								foundat = linecount

						tosearchfromline = linecount - foundat

						for revline in reversed(list(open(thefile))):
							revlinecount += 1
							if revlinecount > tosearchfromline:
								if tosearch in revline:
									stat = revline.split(',')[-1].strip()
									if str(stat) == '0x1':
										content_allowed_list.add(str(thefile))
										return(content_allowed_list)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "Content Access from URLs Restricted")


def ssl_warning_ignore(thefile, thelist):
	
	webview_found = 0
	sslerr_found = 0
	sslerr_receiver_found = 0

	for k in thelist:
		for ckey, cval in k.items():
			if(ckey == "to_class" and str(cval) == "Landroid/webkit/SslErrorHandler"):
				webview_found = 1

			if webview_found == 1:
				if(ckey == "to_method" and str(cval) == "proceed"):
					ssl_warn_list.add(str(thefile))
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "SSL Warnings Supressed! \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
	return(ssl_warn_list)


def dynamic_invocation_weakchecks(thefile, thelist):
	
	found_content_redsolver = 0 

	for k in thelist:
		for ckey, cval in k.items():
			if(ckey == "to_class" and str(cval) == "Landroid/content/ContentResolver"):
				found_content_redsolver = 1

			if found_content_redsolver == 1:
				if(ckey == "to_method" and str(cval) == "call"):
					weak_checks_list.add(str(thefile))

	return(weak_checks_list)


def ext_storage(thefile, thelist):
	ext_storage_list = []
	found_ext = 0

	for k in thelist:
		for ckey, cval in k.items():
			if(ckey == "to_method" and str(cval) == "getExternalFilesDir"):
				print(Fore.RED + "\n\t\t[!] " + Fore.RED + "External Storage used for read/write. Data available to all apps. Make sure data is not sensitive!\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
				ext_storage_list.append(thefile)

	return(ext_storage_list)


def execSQL(thefile, thelist):
	execsql_list = []
	found_exec = 0

	for k in thelist:
		for ckey, cval in k.items():
			if(ckey == "to_class" and str(cval) == "Landroid/database/sqlite/SQLiteDatabase"):
				found_exec = 1

			if found_exec == 1:
				if(ckey == "to_method" and str(cval) == "execSQL"):
					execsql_list.append(str(thefile))
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Non-parameterized SQL queries. SQL injections possible!\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
	return(execsql_list)


def pattern_receiver(thefile, thelist):

	if(os.path.exists('Bytecode')):

		js_enabled_list.add('JAVASCRIPT')
		search_js_enabled(thefile, thelist)

		ecb_usage_list.add('ECB')
		search_ecb(thefile, thelist)

		search_dynamic_list.add('DYNAMIC_RECEIVER')
		search_dynamic_receiver(thefile, thelist)

		empty_pend_list.add('EMPTY_PENDING_INTENT')
		empty_pending_intent(thefile, thelist)

		sys_broadcast_list.add('SYSTEM_BROADCAST_RECEIVER')
		sys_broadcast_receiver(thefile, thelist)

		tls_validity_list.add('TLS_VALIDTY')
		check_tls_validity(thefile, thelist)

		insecure_socket_list.add('INSECURE_SOCKET')
		insecure_socket_factory(thefile, thelist)

		list_of_unenc_soc.add('UNENCRYPTED_COMMUNICATION')
		unenc_socket_comm(thefile, thelist)

		list_of_http_con.add('HTTP_CONNECTION')
		http_con(thefile, thelist)

		unsafe_intent_list.add('UNSAFE_INTENT')
		unsafe_intent_url(thefile, thelist)

		list_of_cookie_overwrite.add('COOKIE_OVERWRITE')
		cookie_overwrite(thefile, thelist)

		url_allowed_list.add('FILE_FROM_URL')
		allow_file_from_url(thefile, thelist)

		content_allowed_list.add('CONTENT_FROM_URL')
		allow_content_from_url(thefile, thelist)

		ssl_warn_list.add('SSL_WARNING_IGNORED')
		ssl_warning_ignore(thefile, thelist)

		weak_checks_list.add('DYNAMIC_WEAK_CHECKS')
		dynamic_invocation_weakchecks(thefile, thelist)


	return(js_enabled_list, ecb_usage_list, search_dynamic_list, empty_pend_list, sys_broadcast_list, tls_validity_list, insecure_socket_list, list_of_unenc_soc, unsafe_intent_list, list_of_cookie_overwrite, url_allowed_list, content_allowed_list, weak_checks_list)


