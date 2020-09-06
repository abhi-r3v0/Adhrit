import sqlite3
import configparser
from sqlite3 import Error


def dbconnection(dbname):

	# Connecting to DB
    conn = None
    try:
        conn = sqlite3.connect(dbname)
    	
    except Error as e:
        print(e)

    return conn


# Creating a table for storing permissions and activities
def create_datatable(conn):
	if conn is not None:
		create_table = ''' CREATE TABLE IF NOT EXISTS DataDB(ScanId text PRIMARY KEY NOT NULL, Permission text, CriticalPerm text, CustomPerm text, Activity text, ExportedActivity text, BroadcastReceiver text, ExportedReceiver text, Deeplinks text, Taskaffinity text, Service text, ExportedService text, Provider text, ImplicitIntent text); '''
		try:
			c = conn.cursor()
			c.execute(create_table)
		except Error as e:
			print(e)




# Inserting data into the data table
def insert_datatable(conn, datadetails):
	if conn is not None:
		insert_table = ''' INSERT INTO DataDB(ScanId, Permission, CriticalPerm, CustomPerm, Activity, ExportedActivity, BroadcastReceiver, ExportedReceiver, Deeplinks, Taskaffinity, Service, ExportedService, Provider, ImplicitIntent) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?); '''
		try:
			c = conn.cursor()
			c.execute(insert_table, datadetails)
			conn.commit()
		except Error as e:
			print(e)

		return c.lastrowid


# Query for select Statement
def select_query(query):
	con = sqlite3.connect('adhrit.db')
	with con:
		con.row_factory = sqlite3.Row
		cur = con.cursor()
		cur.execute(query)
		rows = cur.fetchall()
		return rows
	


# Query for the last scan details
def query_datatable(conn):
	if conn is not None:
		query = ''' select * from DataDB WHERE ScanId = (SELECT MAX(ScanId) FROM DataDB) '''
		try:
			c = conn.cursor()
			c.execute(query)
			rows = c.fetchall()
			return rows
		except Error as e:
			print(e)



# Reset the DataDB
def truncate_table(conn):
	if conn is not None:
		truncate = ''' DELETE FROM DataDB '''
		try:
			c = conn.cursor()
			c.execute(truncate)
			conn.commit()
		except Error as e:
			print(e)
			


		