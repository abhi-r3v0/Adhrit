from adhrit.installer import main
import configparser, webbrowser
from subprocess import Popen, PIPE
from sys import platform
import os,time
try:
	import requests
	from requests.exceptions import ConnectionError
except ImportError:
    print (ImportError('Modules not yet installed!'))

def get_config_data(key):
	check_deps = configparser.ConfigParser()
	check_deps.read('config')                                         
	return check_deps.get('config-data', str(key))


def check_running_process(process):
	cmd = 'pgrep -f '+ process
	process = Popen(cmd, shell=True, stdout=PIPE, 
	stderr=PIPE)
	my_pid, err = process.communicate()
	if len(my_pid.splitlines()) >0:
		return True
	else:
		return False

dep_check = get_config_data('dependencies_status')

if dep_check != 'complete':
	print('[**] Currently Installed dependencies does not meet the requirement of the tool.\n-> Initiating installation of dependencies')
	print('Host OS:  ' + 'MacOS' if platform=="darwin" else 'Linux' )
	main()

dep_check = get_config_data('dependencies_status')

if dep_check == 'complete':
	# Check if Flask app is already running
	if not check_running_process('python3 app.py'):
		b = Popen(['python3 app.py &'], stdin=PIPE, shell=True)
		while(True):
			url = 'http://localhost:5000/'
			try:
				req = requests.get(url)
				if req.status_code == 200:
					b.communicate(input=b'\n')
					break
			except ConnectionError as e:    
				time.sleep(1)

	os.system('sudo lsof -t -i tcp:4200 | xargs kill -9') #To kill any ng s if present
	working_dir = os.getcwd()
	os.chdir(working_dir + '/frontend')
	a = Popen(['ng','s','--host','0.0.0.0'])
	while(True):
		url = 'http://localhost:4200/'
		try:
			req = requests.get(url)
			if req.status_code == 200:
				a.communicate(input=b'\n')
				os.chdir(working_dir)
				break
		# from requests.exceptions import ConnectionError	
		except ConnectionError as e:    
			time.sleep(2)

	
		
webbrowser.open('http://localhost:4200/', new=2)

		





