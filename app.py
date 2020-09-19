from adhrit.adhrit import main
from flask import Flask, json, jsonify, render_template, request
from threading import Thread
from http import HTTPStatus
import os, configparser, time
from adhrit.recons.dbaccess import dbconnection, select_query
from adhrit.recons.reset import reset_scanid, reset_db
from subprocess import call
from adhrit.recons.clean import cleaner
import sqlite3


ALLOWED_EXTENSIONS = {'apk'}

app = Flask(__name__)

class Compute(Thread):
	def __init__(self, request):
		Thread.__init__(self)
		

	def run(self):
		print("Running bytecode Analyser")
		call('python3 bytecode_scanner.py', shell=True)
		set_config_data('bytecode_scan_status', "complete")

def allowed_file(filename):
	return '.' in filename and \
		   filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def get_config_data(key):
	check_deps = configparser.ConfigParser()
	check_deps.read('config')                                         
	return check_deps.get('config-data', str(key))

def set_config_data(key, value):
	update_config = configparser.ConfigParser()
	update_config.read('config')
	update_config.set('config-data', str(key), str(value))
	with open('config', 'w') as updatedconf:
			update_config.write(updatedconf)

def data_from_db(query):
	rows = select_query(query)
	rowarray_list = []

	rowarray_list = []
	for row in rows:
		d = dict(zip(row.keys(), row))   
		rowarray_list.append(d)
	json_data = rowarray_list
	data = json_data[0]
	return data

def null_elimination(data):
	null_key_list = []
	for key, value in data.items():
		val_list = eval(value)
		if not val_list:
			# print(key)
			null_key_list.append(key)
	
	# removing all unused components
	for key in null_key_list:
		del data[key]
	return data
	

def getreport(scan_id, scan_type):
	sid = scan_id
	response = {}

	if scan_type == "manifest":
		query_manifest = "SELECT * FROM `DataDB` WHERE `ScanId` = '%s'" % sid
		manifest_data = data_from_db(query_manifest)
		manifest_newdata = null_elimination(manifest_data)

		#Sorting manifest data for response
		for key, value in manifest_newdata.items():
			val_list = eval(value)
			if key == 'ApplicationInfo':
				response.__setitem__("Application Information", val_list)
			if key == 'Activity':
				response.__setitem__("List of all Activities", val_list)
			if key == 'ExportedActivity':
				response.__setitem__("List of Exported Activities", val_list)
			if key == 'BroadcastReceiver':
				response.__setitem__(key, val_list)
			if key == 'ExportedReceiver':
				response.__setitem__("List of Broadcast Receivers", val_list)
			if key == 'Permission':
				response.__setitem__("List of all Permissions", val_list)
			if key == 'CriticalPerm':
				response.__setitem__("Critical Permissions", val_list)
			if key == 'CustomPerm':
				response.__setitem__("Custom Permissions", val_list)
			if key == 'Deeplinks':
				response.__setitem__("Deeplinks", val_list)
			if key == 'Service':
				response.__setitem__("Services", val_list)
			if key == 'ExportedService':
				response.__setitem__("Exported Services", val_list)
			if key == 'Taskaffinity':
				response.__setitem__("Task Affinity", val_list)
			if key == 'ImplicitIntent':
				tmp_imp_intents = []
				for key in val_list.keys():
					tmp_imp_intents.extend(val_list[key])
				key = 'ImplicitIntent'
				response.__setitem__("Implicit Intents", tmp_imp_intents)
			if key == 'Provider':
				tmp_providers = []
				provider_obj_list = []	
				for key_parent,value_parent in val_list.items():
					for key, value in value_parent.items():
						if key == 'name':
							temp = key + ' : ' + value
							provider_obj_list.insert(0, temp)
						else:
							temp = key + ' : ' + value
						provider_obj_list.append(temp)
					provider_obj_list.append("")
					tmp_providers.extend(provider_obj_list)
					provider_obj_list = []
				key = 'Provider'
				response.__setitem__(key, tmp_providers)

	elif scan_type == "bytecode":
		query_bytecode = "SELECT * FROM `BytecodeDB` WHERE `ScanId` = '%s'" % sid
		bytecode_data = data_from_db(query_bytecode)
		bytecode_newdata = null_elimination(bytecode_data)

		#Sorting manifest data for response
		for key, value in bytecode_newdata.items():
			val_list = eval(value)
			if key == 'Unsafe_Intent_Urls':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'File_Access_Via_Urls':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Content_Access_Via_Urls':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Unencrypted_Socket_Communications':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Insecure_Socket_Factory':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'No_Tls_Validity_Checks':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Sticky_Broadcasts':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Empty_Pending_Intents':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Dynamic_or_exported_Broadcast_Receivers':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Ecb_Instances':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Javascript_Enabled':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Overwritable_Cookie':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Weak_Dynamic_Invocation_Checks_On_Content_Providers':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'execSQL_used':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'SharedPrefs_usage':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'SQLite_DB_usage':
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)


	elif scan_type == "secrets":
		query_secrets = "SELECT * FROM `SecretsDB` WHERE `ScanId` = '%s'" % sid
		secrets_data = data_from_db(query_secrets)
		secrets_newdata = null_elimination(secrets_data)

		#Sorting manifest data for response
		for key, value in secrets_newdata.items():
			val_list = eval(value)
			if key == 'Urls':
				response.__setitem__('URLs', val_list)
			if key == 'Strings':
				response.__setitem__(key, val_list)
			if key == 'Api_keys':
				key = key.replace('_',' ')
				response.__setitem__('API Keys', val_list)

		
	return response



@app.route('/scan',  methods=['POST'])
def scan():
	if request.method == 'POST':
		if 'file' not in request.files:
			flash('No file part')
			return HTTPStatus.NO_CONTENT

		uploaded_files = request.files["file"]
		if uploaded_files and allowed_file(uploaded_files.filename):
			uploaded_files.save(uploaded_files.filename)
			# Renaming to app.apk
			source =  uploaded_files.filename
			dest = 'app.apk'
			os.rename(source, dest)
			
			set_config_data('bytecode_scan_status', 'incomplete')
			thread_a = Compute(request.__copy__())
			thread_a.start()
			main()
			while(True):
				time.sleep(2)
				if get_config_data('bytecode_scan_status') == 'complete':
					cleaner('app.apk')
					break
			thesid = get_config_data('scan_id')
			response = jsonify(status_code=HTTPStatus.OK, scan_id=thesid)
			# response = getreport(thesid)
			thesid = int(thesid) + 1
			set_config_data('scan_id', str(thesid))

			# os.system('rm app.apk')
			# response =jsonify{"status_code" = HTTPStatus.OK, "scan_id"= thesid} 

			return  response	,{'Access-Control-Allow-Origin': '*'} 
	return jsonify(status_msg="apk not sent properly")

@app.route("/report/<scan_id>/<scan_type>")
def report(scan_id, scan_type):
	response = getreport(scan_id, scan_type)
	a = scan_id + ' : ' + scan_type
	return response,{'Access-Control-Allow-Origin': '*'}


@app.route("/testbed")
def test():
	# scanid ='1'
	
	# return getreport(scanid, 'manifest')
	pass



@app.route('/')
def func():
	return "Adhrit up and flying hiGh *-*"




@app.route("/reset")
def reset():
	reset_db()
	reset_scanid()
	return jsonify(sts_msg = "Resetted db and Scan Id!")

	
if __name__ == '__main__':
	app.run(debug=True, use_reloader=True)


# curl -X POST -F file=@app.apk http://localhost:5000/scan
