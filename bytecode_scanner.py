from adhrit.recons.smarser.parser import parser
from adhrit.recons.secrets import secret_scanner
from adhrit.recons.dbaccess import create_status_table, dbconnection, insert_statustable
from adhrit.recons.apk_extract import extraction
from colorama import Fore
import os, sys
import app

hash_of_apk = sys.argv[1]
# hash_of_apk = "e5d9a4fcdabbe0a723cbb28581762cf64ac36d8408efd3ce4f81a7b8f4706913"
parser(hash_of_apk)
secret_scanner(hash_of_apk)



#--------------------------------
dbname = "adhrit.db"
dbconstatus = dbconnection(dbname)
create_status_table(dbconstatus)
datadetails = (str(hash_of_apk), str('Completed'))
addedornot = insert_statustable(dbconstatus, datadetails)




	
	


