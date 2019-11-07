import os
from collections import OrderedDict
from colorama import Fore


def search_js_enabled(thefile, thelist):

	if(os.path.exists('Extracts')):
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
										print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Javascript is enabled \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "Javascript is disabled")

	else:
		print("\n\t[!] Extracts not found!")


def search_ecb(thefile, thelist):

	# print(Fore.BLUE + "\n\t[!] " + Fore.YELLOW + "Checking for Crypto Issues")
	if(os.path.exists('Extracts')):

		for k in thelist:
			for kkey, kvalue in k.items():
				if "AES/ECB" in str(kvalue):
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "ECB cipher usage instance found \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)

	else:
		print("\n\t[!] Extracts not found!")



def search_dynamic_receiver(thefile, thelist):

	# print(Fore.BLUE + "\n\t[!] " + Fore.YELLOW + "Checking for Exported Dynamic Broadcast Receiver")
	if(os.path.exists('Extracts')):
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
								print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Broadcast Receiver Exported \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)


def empty_pending_intent(thefile, thelist):

	if(os.path.exists('Extracts')):
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
							print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Empty Pending Intent Found \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)


def sys_broadcast_receiver(thefile, thelist):

	if(os.path.exists('Extracts')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_method" and str(cval) == "sendStickyBroadcast"):
					
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Sticky Broadcast Found \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)


def check_tls_validity(thefile, thelist):
	flag = 0
	if(os.path.exists('Extracts')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_class" and str(cval) == "Ljava/security/cert/X509Certificate"):
					flag = 1

				if flag == 1:
					if ckey == "to_method":
						if not str(cval) == "checkValidity":
							print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Certificate Validity Checks Not Found\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)


def insecure_socket_factory(thefile, thelist):
	flag = 0
	if(os.path.exists('Extracts')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_class" and str(cval) == "Landroid/net/SSLCertificateSocketFactory"):
					flag = 1

				if flag == 1:
					if ckey == "to_method" and str(cval) == "getInsecure":
						print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Insecure Hostname Verification Routine Found\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
						

def unenc_socket_comm(thefile, thelist):
	list_of_unenc_soc = []
	flag = 0
	found = 0
	flaginet = 0
	flagssl = 0
	if(os.path.exists('Extracts')):
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
						list_of_unenc_soc.append(thefile)
			

def http_con(thefile, thelist):
	list_of_http_con = []
	if(os.path.exists('Extracts')):
		flag = 0
		found = 0
		instances = 0
		f = open(thefile, 'r')
		linecount = 0
		for theline in f:
			linecount += 1
			if 'http://' in theline:
				flag += 1
				found = linecount
				print(Fore.RED + "\n\t\t[!] " + Fore.RED + "HTTP URLs Found\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)


def unsafe_intent_url(thefile, thelist):
	if(os.path.exists('Extracts')):
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

		if foundpackage == 1:
			print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Unsafe URI Parsing! Package Verification Missing\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)



def cookie_overwrite(thefile, thelist):
	list_of_cookie_overwrite = []
	if(os.path.exists('Extracts')):
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
							revlinecount += 1
							if revlinecount > tosearchfromline:
								if tosearch in revline:
									stat = revline.split(',')[-1].strip()
									if str(stat) == '0x1':
										print(Fore.RED + "\n\t\t[!] " + Fore.RED + "SetCookie is Enabled \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)



def pattern_receiver(thefile, thelist):
	if(os.path.exists('Extracts')):

		cookie_overwrite(thefile, thelist)
		unsafe_intent_url(thefile, thelist)
		http_con(thefile, thelist)
		unenc_socket_comm(thefile, thelist)
		insecure_socket_factory(thefile, thelist)
		check_tls_validity(thefile, thelist)
		sys_broadcast_receiver(thefile, thelist)
		empty_pending_intent(thefile, thelist)
		search_dynamic_receiver(thefile, thelist)
		search_ecb(thefile, thelist)
		search_js_enabled(thefile, thelist)




