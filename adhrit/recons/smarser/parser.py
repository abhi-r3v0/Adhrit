import os 
import sys
from colorama import Fore
from smalisca.core.smalisca_main import SmaliscaApp
from smalisca.modules.module_smali_parser import SmaliParser
from adhrit.recons.smarser.patterns import pattern_receiver
from adhrit.recons.smarser.patterns import search_ecb
#from modules.slack_push import slack_prep


set_of_js = set()
set_of_ecb = set()
set_of_search_dynamic = set()
set_of_empty_pend_list = set()
set_of_sys_broadcast_list = set()
set_of_tls_validity_list = set()
set_of_insecure_socket_list = set()
set_of_list_of_unenc_soc = set()
set_of_unsafe_intent_list = set()
set_of_list_of_cookie_overwrite = set()
set_of_url_allowed_list = set()
set_of_content_allowed_list = set()
set_of_ssl_warn_list = set()
set_of_weak_checks_list = set()

#toslackstring = '```'


def printer(xset):
	for x in xset:
		print(Fore.YELLOW + "\n\t\t\t[~] " + str(x))


def set_updater(theset, thepattern):
	theset.remove(thepattern)


#def slacking():
#
#	slack_prep('UNSAFE INTENT URLs', set_of_unsafe_intent_list, toslackstring)
#	slack_prep('FILE ACCESS VIA URLs', set_of_url_allowed_list, toslackstring)
#	slack_prep('CONTENT ACCESS VIA URLs', set_of_content_allowed_list, toslackstring)
#	slack_prep('UNENCRYPTED SOCKET COMMUNICATIONS', set_of_list_of_unenc_soc, toslackstring)
#	slack_prep('INSECURE SOCKET FACTORY', set_of_insecure_socket_list, toslackstring)
#	slack_prep('NO TLS VALIDITY CHECKS', set_of_tls_validity_list, toslackstring)
#	slack_prep('STICKY BROADCASTS', set_of_sys_broadcast_list, toslackstring)
#	slack_prep('EMPTY PENDING INTENTS', set_of_empty_pend_list, toslackstring)
#	slack_prep('DYNAMIC/EXPORTED BROADCAST RECEIVERS', set_of_search_dynamic, toslackstring)
#	slack_prep('ECB INSTANCES', set_of_ecb, toslackstring)
#	slack_prep('JAVASCRIPT ENABLED', set_of_js, toslackstring)
#	slack_prep('OVERWRITABLE COOKIE', set_of_list_of_cookie_overwrite, toslackstring)
#	slack_prep('WEAK DYNAMIC INVOCATION CHECKS ON CONTENT PROVIDERS', set_of_weak_checks_list, toslackstring)


def parser():

	receiver_set = set()
	printflag = 0

	print(Fore.YELLOW + "\n\n--------------------------------------------------")
	print(Fore.GREEN + "[INFO] " + Fore.BLUE + "SCANNING FOR VULNERABILITIES\n")

	filename =  None
	app = SmaliscaApp()
	app.setup()

	location = './Bytecode'

	suffix = 'smali'

	parser = SmaliParser(location, suffix)

	parser.run()

	results = parser.get_results()

	for i in results:
		for key, values in i.items():
			if key == "path":
				filename = values

			if key == "const-strings":
				search_ecb(filename, values)
					
			elif key == "methods":
				for j in values:
					for mkey, mvalue in j.items():
						if mkey == "calls":
							receiver_set = pattern_receiver(filename, mvalue)
							for i in receiver_set:
								for x in i:
									if 'JAVASCRIPT' in x:
										set_of_js.update(i)

									if 'ECB' in x:
										set_of_ecb.update(i)

									if 'DYNAMIC_RECEIVER' in x:
										set_of_search_dynamic.update(i)

									if 'EMPTY_PENDING_INTENT' in x:
										set_of_empty_pend_list.update(i)

									if 'SYSTEM_BROADCAST_RECEIVER' in x:
										set_of_sys_broadcast_list.update(i)

									if 'TLS_VALIDTY' in x:
										set_of_tls_validity_list.update(i)

									if 'INSECURE_SOCKET' in x:
										set_of_insecure_socket_list.update(i)

									if 'UNENCRYPTED_COMMUNICATION' in x:
										set_of_list_of_unenc_soc.update(i)

									if 'UNSAFE_INTENT' in x:
										set_of_unsafe_intent_list.update(i)	

									if 'COOKIE_OVERWRITE' in x:
										set_of_list_of_cookie_overwrite.update(i)

									if 'FILE_FROM_URL' in x:
										set_of_url_allowed_list.update(i)

									if 'CONTENT_FROM_URL' in x:
										set_of_content_allowed_list.update(i)

									if 'DYNAMIC_WEAK_CHECKS' in x:
										set_of_weak_checks_list.update(i)

						else:
							pass

	set_updater(set_of_js, 'JAVASCRIPT')
	set_updater(set_of_ecb, 'ECB')
	set_updater(set_of_search_dynamic, 'DYNAMIC_RECEIVER')
	set_updater(set_of_empty_pend_list, 'EMPTY_PENDING_INTENT')
	set_updater(set_of_sys_broadcast_list, 'SYSTEM_BROADCAST_RECEIVER')
	set_updater(set_of_tls_validity_list, 'TLS_VALIDTY')
	set_updater(set_of_insecure_socket_list, 'INSECURE_SOCKET')
	set_updater(set_of_list_of_unenc_soc, 'UNENCRYPTED_COMMUNICATION')
	set_updater(set_of_unsafe_intent_list, 'UNSAFE_INTENT')
	set_updater(set_of_list_of_cookie_overwrite, 'COOKIE_OVERWRITE')
	set_updater(set_of_url_allowed_list, 'FILE_FROM_URL')
	set_updater(set_of_content_allowed_list, 'CONTENT_FROM_URL')
	set_updater(set_of_weak_checks_list, 'DYNAMIC_WEAK_CHECKS')



	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Javascript is enabled \n")
	printer(set_of_js)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "ECB cipher usage instance found \n")
	printer(set_of_ecb)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Broadcast Receiver Exported \n")
	printer(set_of_search_dynamic)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Empty Pending Intent Found \n")
	printer(set_of_empty_pend_list)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Sticky Broadcast Found \n")
	printer(set_of_sys_broadcast_list)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Certificate Validity Checks Not Found\n")
	printer(set_of_tls_validity_list)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Insecure Hostname Verification Routine Found\n")
	printer(set_of_insecure_socket_list)
	# print(Fore.RED + "\n\t\t[!] " + Fore.RED + "HTTP URLs Found\n")
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "SetCookie is Enabled. Cookie overwrite possible \n")
	printer(set_of_list_of_cookie_overwrite)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "File Access from URLs Allowed \n")
	printer(set_of_url_allowed_list)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Content Access from URLs Allowed \n")
	printer(set_of_content_allowed_list)
	print(Fore.RED + "\n\t\t[!] " + Fore.RED + "Usage of 'Call' for ContentProvider! \n")
	printer(set_of_weak_checks_list)

#	slacking()


	print(Fore.BLUE + "\n\t\t[INFO] Vulnerability References written to 'Vulnerabilities.txt'")
