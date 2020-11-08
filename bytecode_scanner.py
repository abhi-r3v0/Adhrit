from adhrit.recons.smarser.parser import parser
from adhrit.recons.secrets import secret_scanner
from adhrit.recons.dbaccess import create_status_table, dbconnection, insert_statustable
from adhrit.recons.apk_extract import extraction
from colorama import Fore
import os, sys
import app

hash_of_apk = sys.argv[1]
parser(hash_of_apk)
secret_scanner(hash_of_apk)


# extraction('app.apk', hash_of_apk)

# print(Fore.YELLOW + "\n--------------------------------------------------")
# print(Fore.GREEN + "[INFO] " + Fore.BLUE + "SOURCE EXTRATION IN SMALI\n")

# smalicmd = 'java -jar adhrit/tools/apktool.jar d  -rf app.apk -o '+hash_of_apk+'/Bytecode'
# os.system(smalicmd)
# path = hash_of_apk + '/Bytecode'
# if os.path.isdir(path):
# 	print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Extraction complete")

# 	cmd = 'mkdir ./'+hash_of_apk+'/api_scan/'
# 	os.system(cmd)
# 	# cmd = 'mkdir ./'+hash_of_apk+'/api_scan/smali/'
# 	# os.system(cmd)

# 	smali_path = path + '/smali ' 
# 	cmd = 'cp -a ' + smali_path + hash_of_apk + '/api_scan/smali/'
# 	os.system(cmd)
# 	cmd = 'cp ' + hash_of_apk + '/Manifest.xml ./'+hash_of_apk+'/api_scan/'
# 	os.system(cmd)
# 	p = os.getcwd() + '/'+hash_of_apk+'/strings.xml'
# 	if os.path.isfile(p):
# 		cmd = 'cp ' + hash_of_apk + '/strings.xml ./'+hash_of_apk+'/api_scan/'
# 		os.system(cmd)






#--------------------------------
dbname = "adhrit.db"
dbconstatus = dbconnection(dbname)
create_status_table(dbconstatus)
datadetails = (str(hash_of_apk), str('Completed'))
addedornot = insert_statustable(dbconstatus, datadetails)




	
	


