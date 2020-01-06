import os
from collections import OrderedDict
from colorama import Fore


def search_js_enabled(thefile, thelist):

	js_enabled_list = []

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
										print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Javascript is enabled \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile + "\t Line: " + str(foundat))
										js_enabled_list.append(str(thefile))
										return(js_enabled_list)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "Javascript is disabled")

	else:
		print("\n\t[!] Bytecode not found!")

	return(js_enabled_list)


def search_ecb(thefile, thelist):

	ecb_usage_list = []
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
								ecb_usage_list.append(str(thefile))

					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "ECB cipher usage instance found \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile + "\t Line: " + str(foundat))

	else:
		print("\n\t[!] Bytecode not found!")

	return(ecb_usage_list)


def search_dynamic_receiver(thefile, thelist):

	# print(Fore.BLUE + "\n\t[!] " + Fore.YELLOW + "Checking for Exported Dynamic Broadcast Receiver")
	search_dynamic_list = []
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
								print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Broadcast Receiver Exported \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
								search_dynamic_list.append(str(thefile))
	return(search_dynamic_list)


def empty_pending_intent(thefile, thelist):

	empty_pend_list = []

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
							print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Empty Pending Intent Found \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
							empty_pend_list.append(str(thefile))

	return(empty_pend_list)


def sys_broadcast_receiver(thefile, thelist):

	sys_broadcast_list = []

	if(os.path.exists('Bytecode')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_method" and str(cval) == "sendStickyBroadcast"):
					
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Sticky Broadcast Found \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
					sys_broadcast_list.append(str(thefile))

	return(sys_broadcast_list)


def check_tls_validity(thefile, thelist):
	tls_validity_list = []
	flag = 0
	if(os.path.exists('Bytecode')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_class" and str(cval) == "Ljava/security/cert/X509Certificate"):
					flag = 1

				if flag == 1:
					if ckey == "to_method":
						if not str(cval) == "checkValidity":
							print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Certificate Validity Checks Not Found\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
							tls_validity_list.append(str(thefile))

	return(tls_validity_list)


def insecure_socket_factory(thefile, thelist):
	insecure_socket_list = []
	flag = 0
	if(os.path.exists('Bytecode')):
		for k in thelist:
			for ckey, cval in k.items():
				if(ckey == "to_class" and str(cval) == "Landroid/net/SSLCertificateSocketFactory"):
					flag = 1

				if flag == 1:
					if ckey == "to_method" and str(cval) == "getInsecure":
						print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Insecure Hostname Verification Routine Found\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
						insecure_socket_list.append(str(thefile))

	return(insecure_socket_list)
						

def unenc_socket_comm(thefile, thelist):
	list_of_unenc_soc = []
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
						list_of_unenc_soc.append(thefile)

	return(list_of_unenc_soc)
			

def http_con(thefile, thelist):
	list_of_http_con = []
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
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "HTTP URLs Found\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
					list_of_http_con.append(str(thefile))

	return(list_of_http_con)


def unsafe_intent_url(thefile, thelist):
	unsafe_intent_list = []
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
			unsafe_intent_list.append(str(thefile))

		if foundpackage == 1:
			print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Unsafe URI Parsing! Package Verification Missing\n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
			unsafe_intent_list.append(str(thefile))

	return(unsafe_intent_list)


def cookie_overwrite(thefile, thelist):
	list_of_cookie_overwrite = []
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
										list_of_cookie_overwrite.append(str(thefile))
										print(Fore.RED + "\n\t\t[!] " + Fore.RED + "SetCookie is Enabled. Cookie overwrite possible \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)

				if acceptcookie == 2:			
					list_of_cookie_overwrite.append(str(thefile))
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Cookie overwrite possible \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
					continue

				if acceptcookie == 0:
					continue

	return(list_of_cookie_overwrite)


def allow_file_from_url(thefile, thelist):
	url_allowed_list = []

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
										print(Fore.RED + "\n\t\t[!] " + Fore.RED + "File Access from URLs Allowed \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile + "\t Line: " + str(foundat))
										url_allowed_list.append(str(thefile))
										return(url_allowed_list)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "File Access from URLs Restricted")


def allow_content_from_url(thefile, thelist):
	content_allowed_list = []

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
										print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Content Access from URLs Allowed. Malicious JS could access content providers \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile + "\t Line: " + str(foundat))
										content_allowed_list.append(str(thefile))
										return(content_allowed_list)
										exit()
									elif str(stat) == '0x0':
										print(Fore.GREEN + "\n\t\t[+] " + Fore.YELLOW + "Content Access from URLs Restricted")


def ssl_warning_ignore(thefile, thelist):
	ssl_warn_list = []
	webview_found = 0
	sslerr_found = 0
	sslerr_receiver_found = 0

	for k in thelist:
		for ckey, cval in k.items():
			if(ckey == "to_class" and str(cval) == "Landroid/webkit/SslErrorHandler"):
				webview_found = 1

			if webview_found == 1:
				if(ckey == "to_method" and str(cval) == "proceed"):
					ssl_warn_list.append(str(thefile))
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "SSL Warnings Supressed! \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)
	return(ssl_warn_list)


def dynamic_invocation_weakchecks(thefile, thelist):
	weak_checks_list = []
	found_content_redsolver = 0 

	for k in thelist:
		for ckey, cval in k.items():
			if(ckey == "to_class" and str(cval) == "Landroid/content/ContentResolver"):
				found_content_redsolver = 1

			if found_content_redsolver == 1:
				if(ckey == "to_method" and str(cval) == "call"):
					weak_checks_list.append(str(thefile))
					print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Usage of 'Call' for ContentProvider! \n\t\t" + Fore.BLUE + "File: " + Fore.YELLOW + thefile)

	return(weak_checks_list)


def pattern_receiver(thefile, thelist):

	cookie = []
	unsafe_intent = []
	http_connection = []
	unenc_soc = []
	insec_soc = []
	tls_val = []
	sys_broad = []
	empty_pend = []
	dyn_receiver = []
	ecb_instance = []
	js_enable = []
	url_enable = []
	content_enable = []
	ssl_warn = []
	dyn_weakchecks = []



	if(os.path.exists('Bytecode')):

		with open('vulnerablities.txt', 'a+') as vulnwrite:

			unsafe_intent = unsafe_intent_url(thefile, thelist)
			if len(unsafe_intent) > 0:
				vulnwrite.write("\n\nUnsafe Intent:" + str(unsafe_intent))

			url_enable = allow_file_from_url(thefile, thelist)
			if url_enable:
				vulnwrite.write("\n\nFile Access from URL:" + str(url_enable))

			content_enable = allow_content_from_url(thefile, thelist)
			if content_enable:
				vulnwrite.write("\n\nContent Access from URL:" + str(content_enable))

			http_connection = http_con(thefile, thelist)
			if len(http_connection) > 0:
				vulnwrite.write("\n\nHTTP Connection:" + str(http_connection))

			unenc_soc = unenc_socket_comm(thefile, thelist)
			if len(unenc_soc) > 0:
				vulnwrite.write("\n\nUnencrypted Comm:" + str(unenc_soc))

			insec_soc = insecure_socket_factory(thefile, thelist)
			if len(insec_soc) > 0:
				vulnwrite.write("\n\nInsecure Socket Factory:" + str(insec_soc))

			tls_val = check_tls_validity(thefile, thelist)
			if len(tls_val) > 0:
				vulnwrite.write("\n\nTLS Validity:" + str(tls_val))

			sys_broad = sys_broadcast_receiver(thefile, thelist)
			if len(sys_broad) > 0:
				vulnwrite.write("\n\nSystem Broadcast Receiver:" + str(sys_broad))

			empty_pend = empty_pending_intent(thefile, thelist)
			if len(empty_pend) > 0:
				vulnwrite.write("\n\nEmpty Pending Intent:" + str(empty_pend))

			dyn_receiver = search_dynamic_receiver(thefile, thelist)
			if len(dyn_receiver) > 0:
				vulnwrite.write("\n\nDynamic Receiver:" + str(dyn_receiver))

			ecb_instance = search_ecb(thefile, thelist)
			if len(ecb_instance) > 0:
				vulnwrite.write("\n\nECB Instance:" + str(ecb_instance))

			js_enable = search_js_enabled(thefile, thelist)
			if len(js_enable) > 0:
				vulnwrite.write("\n\nJavaScript Enabled:" + str(js_enable))

			cookie = cookie_overwrite(thefile, thelist)
			if len(cookie) > 0:
				vulnwrite.write("\n\nCookie overwrite: " + str(cookie))

			ssl_warn = ssl_warning_ignore(thefile, thelist)
			if ssl_warning_ignore:
				vulnwrite.write("\n\nSSL Warnings Ignored: " + str(ssl_warn))

			dyn_weakchecks = dynamic_invocation_weakchecks(thefile, thelist)
			if dyn_weakchecks:
				vulnwrite.write("\n\nUsage of 'Call' for ContentProvider!")


