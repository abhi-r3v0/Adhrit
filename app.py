from sqlite3.dbapi2 import Cursor
import threading
from adhrit.adhrit import main
from flask import Flask, json, jsonify, render_template, request
from threading import Thread
from http import HTTPStatus
import os, configparser, time
from adhrit.recons.dbaccess import create_status_table, dbconnection, select_query
from adhrit.recons.reset import reset_db
from subprocess import call
from adhrit.recons.clean import cleaner
import sqlite3, hashlib



ALLOWED_EXTENSIONS = {'apk'}

app = Flask(__name__)

class Compute(Thread):
	def __init__(self, request):
		Thread.__init__(self)
		

	def run(self):
		print("Running bytecode Analyser")
		global hash_of_apk
		cmd = 'python3 bytecode_scanner.py ' + str(hash_of_apk)
		call(cmd, shell=True)
		
		

def allowed_file(filename):
	return '.' in filename and \
		   filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def get_hash():
		sha256_hash = hashlib.sha256()
		with open('app.apk',"rb") as f:
			for byte_block in iter(lambda: f.read(4096),b""):
				sha256_hash.update(byte_block)
			return str(sha256_hash.hexdigest())



def data_from_db(query):
	rows = select_query(query)
	rowarray_list = []

	rowarray_list = []
	for row in rows:
		d = dict(zip(row.keys(), row))   
		rowarray_list.append(d)
	json_data = rowarray_list
	if len(json_data) != 0:
		data = json_data[0]
		return data
	else:
		return 0

def null_elimination(data):
	if data != 0:
		null_key_list = []
		for key, value in data.items():
			if 'Hash' in key:
				continue
			val_list = eval(value)
			if not val_list:
				# print(key)
				null_key_list.append(key)
		
		# removing all unused components
		for key in null_key_list:
			del data[key]
	return data

def status_checker(hash_of_apk):
	dbname = "adhrit.db"
	conn = dbconnection(dbname)
	create_status_table(conn)
	Cursor = conn.cursor()
	query = "SELECT Status from `StatusDB` WHERE `Hash` = '%s'" % str(hash_of_apk)
	
	Cursor.execute(query)
	data=Cursor.fetchone()
	if data is None:
		return "Not Scanned Yet"
	else:
		return data[0]

def get_description(key):
	with open('description.json') as f:
  		desc = json.load(f)
	return desc[key]
	

def getreport(hash_key, scan_type):
	
	response = {}

	if scan_type == "manifest":
		query_manifest = "SELECT * FROM `DataDB` WHERE `Hash` = '%s'" % str(hash_key)
		manifest_data = data_from_db(query_manifest)
		manifest_newdata = null_elimination(manifest_data)

		#Sorting manifest data for response
		for key, value in manifest_newdata.items():
			if 'Hash' in key:
				continue
			val_list = eval(value)
			if key == 'ApplicationInfo':
				response.__setitem__("Application Information", val_list)
			if key == 'Activity':
				val_list.insert(0,get_description(key))
				response.__setitem__("List of all Activities", val_list)
			if key == 'ExportedActivity':
				val_list.insert(0,get_description(key))
				response.__setitem__("List of Exported Activities", val_list)
			if key == 'BroadcastReceiver':
				val_list.insert(0,get_description(key))
				response.__setitem__(key, val_list)
			if key == 'ExportedReceiver':
				val_list.insert(0,get_description(key))
				response.__setitem__("List of Broadcast Receivers", val_list)
			if key == 'Permission':
				val_list.insert(0,get_description(key))
				response.__setitem__("List of all Permissions", val_list)
			if key == 'CriticalPerm':
				val_list.insert(0,get_description(key))
				response.__setitem__("Critical Permissions", val_list)
			if key == 'CustomPerm':
				val_list.insert(0,get_description(key))
				response.__setitem__("Custom Permissions", val_list)
			if key == 'Deeplinks':
				val_list.insert(0,get_description(key))
				response.__setitem__("Deeplinks", val_list)
			if key == 'Service':
				val_list.insert(0,get_description(key))
				response.__setitem__("Services", val_list)
			if key == 'ExportedService':
				val_list.insert(0,get_description(key))
				response.__setitem__("Exported Services", val_list)
			if key == 'Taskaffinity':
				val_list.insert(0,get_description(key))
				response.__setitem__("Task Affinity", val_list)
			if key == 'ImplicitIntent':
				tmp_imp_intents = []
				for key in val_list.keys():
					tmp_imp_intents.extend(val_list[key])
				key = 'ImplicitIntent'
				tmp_imp_intents.insert(0,get_description(key))
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
				tmp_providers.insert(0,get_description(key))
				response.__setitem__(key, tmp_providers)

	elif scan_type == "bytecode":
		query_bytecode = "SELECT * FROM `BytecodeDB` WHERE `Hash` = '%s'" % str(hash_key)
		bytecode_data = data_from_db(query_bytecode)
		bytecode_newdata = null_elimination(bytecode_data)

		#Sorting manifest data for response
		for key, value in bytecode_newdata.items():
			if 'Hash' in key:
				continue
			val_list = eval(value)
			if key == 'Unsafe_Intent_Urls':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')	
				response.__setitem__(key, val_list)
			if key == 'File_Access_Via_Urls':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Content_Access_Via_Urls':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Unencrypted_Socket_Communications':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Insecure_Socket_Factory':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'No_Tls_Validity_Checks':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Sticky_Broadcasts':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Empty_Pending_Intents':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Dynamic_or_exported_Broadcast_Receivers':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Ecb_Instances':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Javascript_Enabled':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Overwritable_Cookie':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'Weak_Dynamic_Invocation_Checks_On_Content_Providers':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'execSQL_used':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'SharedPrefs_usage':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)
			if key == 'SQLite_DB_usage':
				val_list.insert(0,get_description(key))
				key = key.replace('_',' ')
				response.__setitem__(key, val_list)


	elif scan_type == "secrets":
		empty_response = ['Not found']
		query_secrets = "SELECT * FROM `SecretsDB` WHERE `Hash` = '%s'" % str(hash_key)
		secrets_data = data_from_db(query_secrets)
		secrets_newdata = null_elimination(secrets_data)

		#Sorting manifest data for response
		if secrets_newdata != 0:
			for key, value in secrets_newdata.items():
				if 'Hash' in key:
					continue
				val_list = eval(value)
				if key == 'Urls':
					val_list.insert(0,get_description(key))
					response.__setitem__('URLs', val_list)
				if key == 'Strings':
					val_list.insert(0,get_description(key))
					response.__setitem__(key, val_list)
				if key == 'Api_keys':
					val_list.insert(0,get_description(key))
					response.__setitem__('API Keys', val_list)

		else:
			response.__setitem__('URLs', empty_response)
			response.__setitem__('Strings from Native libs', empty_response)
			response.__setitem__('API Keys', empty_response)

		
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
			
			global hash_of_apk
			hash_of_apk = get_hash()
			status = status_checker(hash_of_apk)
			if "Completed" not in status:
				if "Not Scanned Yet" not in status:
					dbname = "adhrit.db"
					conn = dbconnection(dbname)
					Cursor = conn.cursor()
					query = "DELETE FROM `StatusDB` WHERE `Hash` = '%s'" % str(hash_of_apk)
					Cursor.execute(query)
				thread_a = Compute(request.__copy__())
				thread_a.start()
				main(hash_of_apk)
			
			while(True):
				time.sleep(2)
				status = status_checker(hash_of_apk)
				if status == 'Completed':
					cleaner(hash_of_apk)
					break

			response = jsonify(status_code=HTTPStatus.OK, hash_key=hash_of_apk)
			os.system('rm app.apk')

			return  response	,{'Access-Control-Allow-Origin': '*'} 
	return jsonify(status_msg="apk not sent properly")

@app.route("/report/<hash_key>/<scan_type>")
def report(hash_key, scan_type):
	response = getreport(hash_key, scan_type)
	return response,{'Access-Control-Allow-Origin': '*'}



		




@app.route("/testbed")
def test():
	return "test bed"




@app.route('/')
def func():
	return "Adhrit up and running *-*"



@app.route("/reset")
def reset():
	reset_db()
	return jsonify(sts_msg = "Resetted db and Scan Id!")

	
if __name__ == '__main__':
	global hash_of_apk
	app.run(debug=False, use_reloader=True,threaded=False , processes=2)

#threaded=True,
# curl -X POST -F file=@app.apk http://localhost:5000/scan
