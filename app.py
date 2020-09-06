from adhrit.adhrit import main
from flask import  Flask, render_template, request, jsonify
from threading import Thread
from http import HTTPStatus
import os, configparser, time
# from FlashBeam.modules.dbaccess import dbconnection

ALLOWED_EXTENSIONS = {'apk'}

app = Flask(__name__)

# class Compute(Thread):
#     def __init__(self, request):
#         Thread.__init__(self)
        

#     def run(self):
#         print("Initiating")
#         time.sleep(1)
#         main()
        

def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def get_config_data(key):
    check_deps = configparser.ConfigParser()
    check_deps.read('adhrit/config')                                         ####
    return check_deps.get('config-data', str(key))



@app.route('/scan',  methods=['POST'])
def scan():
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('No file part')
            return HTTPStatus.NO_CONTENT

        uploaded_files = request.files["file"]
        if uploaded_files and allowed_file(uploaded_files.filename):
            # uploaded_files.save(os.path.join("uploads", uploaded_files.filename))
            uploaded_files.save(uploaded_files.filename)
            # Renaming to app.apk
            source =  uploaded_files.filename
            dest = 'app.apk'
            os.rename(source, dest)
            
            
            
            # thread_a = Compute(request.__copy__())
            # thread_a.start()
            main()
            thesid = get_config_data('scan_id')
            response = jsonify(status_msg='Scanning Completed', scan_id = thesid,  status=HTTPStatus.OK)
    
            return  response

       
    return jsonify(status_msg="apk not sent properly")

    



@app.route('/')
def func():
    return "Adhrt up and flying hiGh *-*"

@app.route('/report/<int:scan_id>')
def getreport(scan_id):
#    sid = scan_id
#    con = dbconnection('adhrit')
#    cursor = conn.cursor()
#    cursor.execute("SELECT * FROM `DataDB` WHERE `ScanId` = '%s'" % sid)
    
    #TODO
    
    return str(scan_id)
    
if __name__ == '__main__':
    app.run(debug=True)


# curl -X POST -F file=@CREDv1.apk http://localhost:5000/scan


