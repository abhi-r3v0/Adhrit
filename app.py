from adhrit.adhrit import main
from flask import  Flask, render_template, request, jsonify
from threading import Thread
from http import HTTPStatus
import os, configparser, time
from adhrit.recons.dbaccess import dbconnection, select_query
from adhrit.recons.reset import reset_scanid, reset_db


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
            response = jsonify(status_msg='Scanning Completed', scan_id = thesid,rows = rows,  status=HTTPStatus.OK)
            update_scanid()
            return  response,{'Access-Control-Allow-Origin': '*'}
    return jsonify(status_msg="apk not sent properly")

    



@app.route('/')
def func():
    return "Adhrt up and flying hiGh *-*"

def getreport(scan_id):
   sid = scan_id
   query = "SELECT * FROM `DataDB` WHERE `ScanId` = '%s'" % sid
   rows = select_query(query)
   return rows   
    
@app.route("/reset")
def reset():
    reset_db()
    reset_scanid
    return jsonify(sts_msg = "Resetted db and Scan Id!")

    
if __name__ == '__main__':
    app.run(debug=True)


# curl -X POST -F file=@app.apk http://localhost:5000/scan


