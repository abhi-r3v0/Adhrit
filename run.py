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

confparser = configparser.ConfigParser()
confparser.read('config') 
dep_check = confparser.get('config-data', 'dependencies_status')


def check_running_process(process):
	cmd = 'pgrep -f '+ process
	process = Popen(cmd, shell=True, stdout=PIPE, 
	stderr=PIPE)
	my_pid, err = process.communicate()
	if len(my_pid.splitlines()) >0:
		return True
	else:
		return False


if dep_check != 'complete':
	print('[**] Currently Installed dependencies does not meet the requirement of the tool.\n-> Initiating installation of dependencies')
	print('Host OS:  ' + 'MacOS' if platform=="darwin" else 'Linux' )
	main()

if dep_check == 'complete':
	os.system('sudo lsof -t -i tcp:4200 | xargs kill -9') #To kill any ng s if present
	working_dir = os.getcwd()
	os.chdir(working_dir + '/frontend')
	a = Popen(['ng s &'], stdin=PIPE, shell=True)
	while(True):
		url = 'http://localhost:4200/'
		try:
			req = requests.get(url)
			if req.status_code == 200:
				print('Check point 1')
				a.communicate(input=b'\n')
				os.chdir(working_dir)
				break
		# from requests.exceptions import ConnectionError	
		except ConnectionError as e:    # This is the correct syntax
			time.sleep(2)

	# Check if Flask app is already running
	if not check_running_process('python3 app.py'):
		b = Popen(['python3 app.py &'], stdin=PIPE, shell=True)
		while(True):
			url = 'http://localhost:5000/'
			try:
				req = requests.get(url)
				if req.status_code == 200:
					print('Check point 1')
					b.communicate(input=b'\n')
					break
			except ConnectionError as e:    # This is the correct syntax
				time.sleep(1)
		
webbrowser.open('http://localhost:4200/', new=2)

		





