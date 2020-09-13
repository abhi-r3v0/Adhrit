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
	check_deps.read('adhrit/config')                                         
	return check_deps.get('config-data', str(key))

def set_config_data(key, value):
	update_config = configparser.ConfigParser()
	update_config.read('adhrit/config')
	update_config.set('config-data', str(key), str(value))
	with open('adhrit/config', 'w') as updatedconf:
			update_config.write(updatedconf)

# def update_scanid():

# 	# Updating config data

# 	update_config = configparser.ConfigParser()
# 	update_config.read('adhrit/config')
# 	thescanid = update_config.get('config-data', 'scan_id')
# 	thescanid = int(thescanid) + 1 

# 	update_config.set('config-data', 'scan_id', str(thescanid))
# 	with open('adhrit/config', 'w') as updatedconf:
# 			update_config.write(updatedconf)



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
			
			# set_config_data('bytecode_scan_status', 'incomplete')
			# thread_a = Compute(request.__copy__())
			# thread_a.start()
			# main()
			# while(True):
			# 	time.sleep(2)
			# 	if get_config_data('bytecode_scan_status') == 'complete':
			# 		# cleaner('app.apk')
			# 		break
			# thesid = get_config_data('scan_id')
			thesid = str(1)
			response = getreport(thesid)
			print(type(response))
			# print(response)

			# thesid = int(thesid) + 1
			# set_config_data('scan_id', str(thesid))
			return  response,200,{'Access-Control-Allow-Origin': '*'} 
	return jsonify(status_msg="apk not sent properly")

def data_from_db(query):
	rows = select_query(query)
	rowarray_list = []

	rowarray_list = []
	for row in rows:
		d = dict(zip(row.keys(), row))   # a dict with column names as keys
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
	

def getreport(scan_id):
	sid = scan_id
	query_manifest = "SELECT * FROM `DataDB` WHERE `ScanId` = '%s'" % sid
	query_bytecode = "SELECT * FROM `BytecodeDB` WHERE `ScanId` = '%s'" % sid

	manifest_data = data_from_db(query_manifest)
	bytecode_data = data_from_db(query_bytecode)


	manifest_newdata = null_elimination(manifest_data)
	bytecode_newdata = null_elimination(bytecode_data)

	print(bytecode_newdata)
	

	response = {}
	#Sorting manifest data
	for key, value in manifest_newdata.items():
		val_list = eval(value)
		if key == 'Activity':
			response.__setitem__(key, val_list)
		if key == 'ExportedActivity':
			response.__setitem__(key, val_list)
		if key == 'BroadcastReceiver':
			response.__setitem__(key, val_list)
		if key == 'ExportedReceiver':
			response.__setitem__(key, val_list)
		if key == 'Permission':
			response.__setitem__(key, val_list)
		if key == 'CriticalPerm':
			response.__setitem__(key, val_list)
		if key == 'CustomPerm':
			response.__setitem__(key, val_list)
		if key == 'Deeplinks':
			response.__setitem__(key, val_list)
		if key == 'Service':
			response.__setitem__(key, val_list)
		if key == 'ExportedService':
			response.__setitem__(key, val_list)
		if key == 'Taskaffinity':
			response.__setitem__(key, val_list)
		if key == 'ImplicitIntent':
			tmp_imp_intents = []
			for key in val_list.keys():
				tmp_imp_intents.extend(val_list[key])
			key = 'ImplicitIntent'
			response.__setitem__(key, tmp_imp_intents)
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

		

	return response

@app.route("/testbed")
def test():
	pass


	return 'testBEd',200,{'Access-Control-Allow-Origin': '*'} 






@app.route('/')
def func():
	return "Adhrt up and flying hiGh *-*"




@app.route("/reset")
def reset():
	reset_db()
	reset_scanid()
	return jsonify(sts_msg = "Resetted db and Scan Id!")

	
if __name__ == '__main__':
	app.run(debug=True,)


# curl -X POST -F file=@app.apk http://localhost:5000/scan
