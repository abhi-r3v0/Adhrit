from adhrit.adhrit import main
from flask import Flask, json, jsonify, render_template, request
from threading import Thread
from http import HTTPStatus
import os, configparser, time
from adhrit.recons.dbaccess import dbconnection, select_query
from adhrit.recons.reset import reset_scanid, reset_db
import sqlite3


ALLOWED_EXTENSIONS = {'apk'}

app = Flask(__name__)



def allowed_file(filename):
	return '.' in filename and \
		   filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def get_config_data(key):
	check_deps = configparser.ConfigParser()
	check_deps.read('adhrit/config')                                         ####
	return check_deps.get('config-data', str(key))

def update_scanid():

	# Updating config data

	update_config = configparser.ConfigParser()
	update_config.read('adhrit/config')
	thescanid = update_config.get('config-data', 'scan_id')
	thescanid = int(thescanid) + 1 

	update_config.set('config-data', 'scan_id', str(thescanid))
	with open('adhrit/config', 'w') as updatedconf:
			update_config.write(updatedconf)



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
			
		  
			main()
			thesid = get_config_data('scan_id')
			rows = getreport(thesid)
			response = rows, {'Access-Control-Allow-Origin': '*'}  
			update_scanid()
			return  response
	return jsonify(status_msg="apk not sent properly")


def getreport(scan_id):
	sid = scan_id
	query = "SELECT * FROM `DataDB` WHERE `ScanId` = '%s'" % sid
	rows = select_query(query)
	rowarray_list = []
	for row in rows:
		d = dict(zip(row.keys(), row))   # a dict with column names as keys
		rowarray_list.append(d)
	json_data = rowarray_list
	data = json_data[0]

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

@app.route("/testbed")
def test():
	
	return "Api testZone"





@app.route('/')
def func():
	return "Adhrt up and flying hiGh *-*"




@app.route("/reset")
def reset():
	reset_db()
	reset_scanid()
	return jsonify(sts_msg = "Resetted db and Scan Id!")

	
if __name__ == '__main__':
	app.run(debug=True)


# curl -X POST -F file=@app.apk http://localhost:5000/scan


