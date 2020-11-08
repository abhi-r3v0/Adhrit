# !/usr/bin/env python3

import os
import zipfile
import configparser
import xml.etree.ElementTree as Et
import json
from time import gmtime, strftime
from adhrit.recons.dbaccess import dbconnection, create_datatable, insert_datatable


def man_scanner(hash_of_apk):
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
	scanned_application_info = []

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
	json_application_info = []

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
	deeplinks_count = 0

	check_deps = configparser.ConfigParser()
	check_deps.read('config')
	tstamp = strftime("%Y-%m-%d %H:%M:%S", gmtime())
	dbname = "adhrit.db"

	dbconstatus = dbconnection(dbname)

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

	xmlfile = hash_of_apk+'/Manifest.xml'
	if os.path.exists(xmlfile):
		print("Manifest found. Starting analysis\n")
		tree = Et.parse(xmlfile)
		root = tree.getroot()
		for pkg_attribs in root.attrib:
			if pkg_attribs == "package":
				pkg_name = "Package Name: " + str(root.attrib[pkg_attribs])
				scanned_application_info.append(pkg_name)
				

		
		# Checking for backup status
		backup_status = root.findall("application")
		for acts in backup_status:
			for bckp in acts.attrib:
				if bckp == allow_backup:
					if acts.attrib[bckp] == "true":
						backup_status = 'Backup Status: '+ str(' True')
					else:
						backup_status = 'Backup Status: '+ str(' False')
					scanned_application_info.append(backup_status)

		# Checking for debug flag
		debug_status = root.findall("application")
		for app_attribs in debug_status:
			for dbug in app_attribs.attrib:
				if dbug == debuggable :
					if app_attribs.attrib[dbug] == "true":
						debug_status = 'Debug Status: '+ str(' True')
					else:
						debug_status = 'Debug Status: '+ str(' False')	
					scanned_application_info.append(debug_status)
					json_application_info = json.dumps(scanned_application_info)

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
			# c2 += 1
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

		# List of activities
		print("List of Activities")
		act_lists = root.iter('activity') 
		for activity in act_lists:
			act_count += 1 
			#  JSON DATA
			scanned_acts.append(str(activity.attrib[name]))
			json_acts = json.dumps(scanned_acts)	
		act_alias_lists = root.iter('activity-alias') 		# appending Activity alias to activity list 
		for activityalias in act_alias_lists:
			act_count += 1 
			# JSON DATA
			scanned_acts.append(str(activityalias.attrib[name]))
			json_acts = json.dumps(scanned_acts)


		# List of exported activities
		exp_act_list = root.iter('activity')
		for activity in exp_act_list:
			for act_key,act_val in activity.attrib.items():
				if exported in act_key and act_val == 'true':
					#JSON DATA
					scanned_exported_acts.append(activity.attrib[name])
					json_export_acts = json.dumps(scanned_exported_acts)
		
		if not scanned_exported_acts:
			print("No exported activities found.")

		# Checking for receivers
		print("Checking for BroadcastReceivers")
		rec_count = 0
		sts_code = 0
		receiver_list = root.iter('receiver')
		for receiver in receiver_list:
			sts_code = 0
			rec_count += 1
			for recv_key,recv_val in receiver.attrib.items():
				if exported in recv_key and recv_val == 'true':         #exported broadcast receiver
					# print(f'{rec_count}     {receiver.attrib[name]}')
					sts_code = 1
					# JSON DATA
					scanned_exported_receivers.append(str(receiver.attrib[name]))
					json_export_receivers = json.dumps(scanned_exported_receivers)
				
				if permission in recv_key:                              #custom permissions for broadcast receiver
					# print(receiver.attrib[permission])
					# JSON DATA
					var = receiver.tag +' : ' + str(receiver.attrib[permission])
					scanned_custom_perms.append(var)
					json_custom_perms = json.dumps(scanned_custom_perms)
		
			if(sts_code !=1):
				# print(f'{rec_count}     {receiver.attrib[name]}')
				# JSON DATA
				scanned_receivers.append(str(receiver.attrib[name]))
				json_receivers = json.dumps(scanned_receivers)
				pass

		# DeepLinks
		intentFilter = root.findall("./application/activity/")
		for eachIntentFilter in intentFilter:
			newparent = eachIntentFilter
			for action in newparent.iter('action'):
				if action_VIEW in action.attrib[name]:
					# print(action.attrib[name])
					for category in newparent.iter('category'):
						if category_BROWSABLE in category.attrib[name]:
							for data in newparent.iter('data'):
								deeplink = ''
								if host in data.attrib:
									deeplink = str(data.attrib[scheme]) + '://'+ str(data.attrib[host])
								else:
									deeplink = str(data.attrib[scheme])
								# print(data.attrib[host]+data.attrib[scheme]+data.attrib[path])   
								if  pathPattern in data.attrib :
									tmp = str(data.attrib[pathPattern])
								elif path in data.attrib:
									tmp = str(data.attrib[path])
								else:
									# print('no path or path prefix predifined')
									tmp = ''
								deeplinks_count +=1
								deeplink += tmp
								scanned_deeplinks.append(deeplink)
								json_deeplinks = json.dumps(scanned_deeplinks)
								# print(deeplink)

		# TaskAffinity
		# Check in application tag
		task_affinity= root.findall("application")
		for affinity_status in task_affinity:
			for affkey, affval in affinity_status.attrib.items():
				if affkey == taskAffinity:
					print( affkey)
					print(affval)
					if affval == "":
						info = "Null predifined in application tag."
						# JSON DATA
						scanned_taskaffinity.append(info)
						json_taskaffinity = json.dumps(scanned_taskaffinity)
						pass
					
		# if taskAffinity not in all_app_tags:
		# 	info = "The application tag has no taskAffinity set to NULL. Activities Hijackable!"
		# 	# JSON DATA
		# 	scanned_taskaffinity.append(info)
		# 	json_taskaffinity = json.dumps(scanned_taskaffinity) 
		
		# Check in all activity tag
		for activity in root.iter('activity'):
			for affkey, affval in activity.attrib.items():
				if taskAffinity in affkey:
					ta_count += 1
					info = str(activity.attrib[name])
					# JSON DATA
					scanned_taskaffinity.append(info)
					json_taskaffinity = json.dumps(scanned_taskaffinity)
					
		
		if ta_count == 0:
			info = 'None of the activity tag has TaskAffinity predifined in it.'
			 # JSON DATA
			# scanned_taskaffinity.append(info)
			# json_taskaffinity = json.dumps(scanned_taskaffinity)

		# Services and Exp Services
		print('Checking for Services')
		ser_cnt = 0
		sts_code = 0
		service_list = root.iter('service')
		for service in service_list:
			sts_code = 0
			ser_cnt += 1
			for ser_key,ser_val in service.attrib.items():
				if exported in ser_key and ser_val == 'true':
					# print(f'{ser_cnt} ** {service.attrib[name]}')
					sts_code = 1
					# JSON DATA
					scanned_exported_services.append(str(service.attrib[name])) 
					json_export_services = json.dumps(scanned_exported_services)

				if permission in ser_key:					#Custom Perm for services
					var = service.tag +' : ' + str(service.attrib[permission])
					if var not in scanned_custom_perms:
						scanned_custom_perms.append(var)
						json_custom_perms = json.dumps(scanned_custom_perms)
				
			if(sts_code != 1):
				# print(f'{ser_cnt} * {service.attrib[name]}')
				# JSON DATA
				scanned_services.append(str(service.attrib[name]))
				json_services = json.dumps(scanned_services)
		
		# Provider
		print('Checking for Content Providers')
		pr_cnt = 0
		sts_code = 0
		pr_parent_dic = {}
		pr_child_dic = {}
		provider_list = root.iter('provider')
		for provider in provider_list:
			pr_child_dic = {}
			pr_cnt += 1  
			for pr_key, pr_val in provider.attrib.items():
				pr_key = pr_key.partition('{http://schemas.android.com/apk/res/android}')[2]
				pr_child_dic.__setitem__(pr_key, pr_val) 
			# print(pr_child_dic)
			pr_parent_dic.__setitem__(pr_cnt, pr_child_dic)
		# print(pr_parent_dic)

		json_provider = json.dumps(pr_parent_dic)
		
		name_loc = 0
		iter_no = 0
		for i in range(1,pr_cnt+1):
			name_loc = iter_no 
			for key, val in pr_parent_dic[i].items():
				iter_no += 1
				var = key + ' : ' + val
				if key == 'name':
					scanned_provider.insert(name_loc, var)
				else:
					scanned_provider.append(var)

			scanned_provider.append(' ')
			iter_no += 1
		# print(scanned_provider)

		#Implicit Intent
		print('Checking for Implicit Intent')
		intent_fiter_dict = {}
		sts_code = 0
		intent_filter_parents = ["activity", "activity-alias", "service", "provider", "receiver" ]
		for each_intent_filter_parent in intent_filter_parents:
			single_intent_filter_obj = []
			parent_elems = root.getiterator(each_intent_filter_parent)
			for parent_elem  in parent_elems:
				for each_intent_filter in list(parent_elem):
					var_key = parent_elem.tag + ' : ' + parent_elem.attrib[name]
					if var_key in intent_fiter_dict.keys():
						single_intent_filter_obj.pop()
						sts_code = 1
						pass
					else: 
						if 'data : ' not in str(single_intent_filter_obj) and len(single_intent_filter_obj) > 1:
							scanned_implicit_intent.extend(single_intent_filter_obj)
						single_intent_filter_obj = []
						single_intent_filter_obj.append(var_key)
					for i in list(each_intent_filter):
						var = str(i.tag) + ' : ' + str(i.get(name))
						# print(var)
						single_intent_filter_obj.append(var)
					if 'data : ' not in str(single_intent_filter_obj) and len(single_intent_filter_obj) > 1:
						if sts_code == 1:
							intent_fiter_dict[var_key] = single_intent_filter_obj
							single_intent_filter_obj.append(' ')
						else:
							intent_fiter_dict.__setitem__(var_key, single_intent_filter_obj)
							single_intent_filter_obj.append(' ')
			if 'data : ' not in str(single_intent_filter_obj) and len(single_intent_filter_obj) > 1:
				scanned_implicit_intent.extend(single_intent_filter_obj)		
		json_implicit_intent = json.dumps(intent_fiter_dict)

		
	return dbconstatus,  str(json_application_info), str(json_perms),  str(json_critical_perms), str(json_custom_perms),  str(json_acts),  str(json_export_acts), str(json_receivers), str(json_export_receivers), str(json_deeplinks), str(json_taskaffinity), str(json_services), str(json_export_services), str(json_provider), str(json_implicit_intent)

def add_to_db(dbconstatus, hash_of_apk, json_application_info ,json_perms, json_critical_perms, json_custom_perms, json_acts, json_export_acts, json_receivers, json_export_receivers, json_deeplinks, json_taskaffinity, json_services, json_export_services, json_provider, json_implicit_intent):

	# Database Operations
	create_datatable(dbconstatus)
	datadetails = (str(hash_of_apk), str(json_application_info), str(json_perms), str(json_critical_perms), str(json_custom_perms), str(json_acts), str(json_export_acts), str(json_receivers), str(json_export_receivers), str(json_deeplinks), str(json_taskaffinity), str(json_services), str(json_export_services), str(json_provider), str(json_implicit_intent))		
	addedornot = insert_datatable(dbconstatus, datadetails)


			

def man_analyzer(apk_name, hash_of_apk):
	path =  hash_of_apk + '/Manifest.xml'
	if os.path.exists(path):

		retdbstat, retappinfo, retjperm, retjcriticalperm, retjcustomperm, retjacts, retjexportedacts, retjrecvs, retjexportedrecvs, retjdeep, retjtaskaff, retjserv, retjexpserv, retjprovider, retjintent  = man_scanner(hash_of_apk)
		add_to_db(retdbstat, hash_of_apk, retappinfo, retjperm, retjcriticalperm, retjcustomperm, retjacts, retjexportedacts, retjrecvs, retjexportedrecvs, retjdeep, retjtaskaff, retjserv, retjexpserv, retjprovider, retjintent)
