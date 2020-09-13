import configparser
import sqlite3
from adhrit.recons.dbaccess import dbconnection, truncate_table



def reset_scanid():
	print("\n")
	update_config = configparser.ConfigParser()
	update_config.read('config')
	update_config.set('config-data', 'scan_id', '1')
	with open('config', 'w') as updatedconf:
            update_config.write(updatedconf)
	print("SCAN ID HAS BEEN RESET")


def reset_db():
	print("\n")
	dbname = 'adhrit.db'
	dbstat = dbconnection(dbname)
	truncate_table(dbstat)
	print("DATABASE HAS BEEN RESET")