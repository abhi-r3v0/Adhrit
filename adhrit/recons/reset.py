import configparser
import sqlite3
from adhrit.recons.dbaccess import dbconnection, truncate_table

def reset_db():
	print("\n")
	dbname = 'adhrit.db'
	dbstat = dbconnection(dbname)
	truncate_table(dbstat)
	print("DATABASE HAS BEEN RESET")