# !/usr/bin/env python3

import os
import zipfile
import configparser
import xml.etree.ElementTree as Et
import json


def man_scanner():
	global pkg_name
	scanned_acts = []
	scanned_perms = []
	scanned_custom_perms = []
	scanned_critical_perms = []
	scanned_exported_acts = []
	scanned_receivers = []
	scanned_exported_receivers = []
	scanned_taskaffinity = []
	scanned_deeplinks = []
	scanned_exported_services = []
	scanned_services = []
	scanned_provider = []
	scanned_implicit_intent = []

	json_acts = []
	json_export_acts = []
	json_critical_perms = []
	json_custom_perms = []
	json_perms = []
	json_receivers = []
	json_export_receivers = []
	json_taskaffinity = []
	json_deeplinks = []
	json_export_services = []
	json_services = []
	json_provider = []
	json_implicit_intent = [] 

	all_app_tags = []

	name = "{http://schemas.android.com/apk/res/android}name"
	allow_backup = "{http://schemas.android.com/apk/res/android}allowBackup"
	debuggable = "{http://schemas.android.com/apk/res/android}debuggable"
	taskAffinity = "{http://schemas.android.com/apk/res/android}taskAffinity"
	permission = "{http://schemas.android.com/apk/res/android}permission"
	exported = 'http://schemas.android.com/apk/res/android}exported'
	host = '{http://schemas.android.com/apk/res/android}host'
	path = '{http://schemas.android.com/apk/res/android}path'
	pathPattern = '{http://schemas.android.com/apk/res/android}pathPattern'
	scheme = '{http://schemas.android.com/apk/res/android}scheme'
	category_BROWSABLE = "android.intent.category.BROWSABLE"
	action_VIEW = "android.intent.action.VIEW"

	exp_status = 0
	act_count = 0
	ta_count = 0

	print( "MANIFEST ANALYSIS")
	perm_severe = {"android.permission.ACCESS_SUPERUSER",
				   "android.permission.USE_FINGERPRINT",
				   "android.permission.MANAGE_DOCUMENTS",
				   "android.permission.READ_FRAME_BUFFER",
				   "android.permission.READ_SMS",
				   "android.permission.RECEIVE_SMS",
				   "android.permission.RECEIVE_WAP_PUSH",
				   "android.permission.RECORD_AUDIO",
				   "android.permission.READ_PHONE_STATE",
				   "android.permission.READ_PHONE_NUMBERS",
				   "android.permission.ACCESS_COARSE_LOCATION",
				   "android.permission.ACCESS_FINE_LOCATION",
				   "android.permission.ADD_VOICEMAIL",
				   "android.permission.ANSWER_PHONE_CALLS",
				   "android.permission.BODY_SENSORS",
				   "android.permission.CALL_PHONE",
				   "android.permission.CAMERA",
				   "android.permission.GET_ACCOUNTS",
				   "android.permission.PROCESS_OUTGOING_CALLS",
				   "android.permission.READ_CALENDAR",
				   "android.permission.READ_CALL_LOG",
				   "android.permission.READ_CONTACTS",
				   "android.permission.READ_EXTERNAL_STORAGE",
				   "android.permission.WRITE_EXTERNAL_STORAGE",
				   "android.permission.USE_SIP",
				   "android.permission.WRITE_CALENDAR",
				   "android.permission.WRITE_CALL_LOG",
				   "android.permission.WRITE_CONTACTS"
				   }

	xmlfile = 'Manifest.xml'
	if os.path.exists(xmlfile):
		print("Manifest found. Starting analysis\n")
		tree = Et.parse(xmlfile)
		root = tree.getroot()
		for pkg_attribs in root.attrib:
			if pkg_attribs == "package":
				pkg_name = root.attrib[pkg_attribs]
		
		# Checking for backup status
		backup_status = root.findall("application")
		for acts in backup_status:
			for bckp in acts.attrib:
				if bckp == allow_backup:
					if acts.attrib[bckp] == "true":
						print('Backup Status: '+ str(' True'))
					else:
						print('Backup Status: '+ str(' False'))

		# Checking for debug flag
		for debugattrib in backup_status:
			for dbgstatus in debugattrib.attrib:
				if dbgstatus == debuggable:
					if debugattrib.attrib[dbgstatus] == "true":
						print('Debug Status: '+ str(' True'))
					else:
						print('Debug Status: '+ str(' False'))

		# List of critical permissions
		permissions = root.iter('uses-permission')
		for perms in permissions:
			if perms.attrib[name] in perm_severe:
				# c3 += 1
				#JSON DATA
				scanned_critical_perms.append(perms.attrib[name])
				json_critical_perms = json.dumps(scanned_critical_perms)
		
		# List of all permissions
		print( "Listing all permissions.")
		permissions = root.iter('uses-permission')
		for perms in permissions:
			c2 += 1
			if not perms.attrib[name].startswith("android.permission"):                 # Custom permissions
				# print(perms.attrib[name])
				# JSON DATA
				var = perms.tag +' : ' + str(perms.attrib[name])
				scanned_custom_perms.append(var)
				json_custom_perms = json.dumps(scanned_custom_perms)
			else:                                                                       #normal permissions
				# JSON DATA
				scanned_perms.append(perms.attrib[name])
				json_perms = json.dumps(scanned_perms)

		


	return str(json_perms),  str(json_critical_perms), str(json_custom_perms),  str(json_acts),  str(json_export_acts), str(json_receivers), str(json_export_receivers), str(json_deeplinks), str(json_taskaffinity), str(json_services), str(json_export_services), str(json_provider), str(json_implicit_intent)


def man_analyzer(apk_name):
	if os.path.exists("Manifest.xml"):

		retjperm, retjcriticalperm, retjcustomperm, retjacts, retjexportedacts, retjrecvs, retjexportedrecvs, retjdeep, retjtaskaff, retjserv, retjexpserv, retjprovider, retjintent  = man_scanner()
		return retjperm, retjcriticalperm, retjcustomperm, retjacts, retjexportedacts, retjrecvs, retjexportedrecvs, retjdeep, retjtaskaff, retjserv, retjexpserv, retjprovider, retjintent