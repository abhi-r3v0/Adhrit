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

# Creating a table for storing data from Bytecode Scanning
def create_bytecode_table(conn):
	if conn is not None:
		create_table = ''' CREATE TABLE IF NOT EXISTS BytecodeDB(ScanId text PRIMARY KEY NOT NULL, Unsafe_Intent_Urls text, File_Access_Via_Urls text, Content_Access_Via_Urls text, Unencrypted_Socket_Communications text, Insecure_Socket_Factory text, No_Tls_Validity_Checks text, Sticky_Broadcasts text, Empty_Pending_Intents text, Dynamic_or_exported_Broadcast_Receivers text, Ecb_Instances text, Javascript_Enabled text, Overwritable_Cookie text, Weak_Dynamic_Invocation_Checks_On_Content_Providers text); '''
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

# Inserting data into the Bytecode table
def insert_bytecodetable(conn, datadetails):
	if conn is not None:
		insert_table = ''' INSERT INTO BytecodeDB(ScanId, Unsafe_Intent_Urls, File_Access_Via_Urls, Content_Access_Via_Urls, Unencrypted_Socket_Communications, Insecure_Socket_Factory, No_Tls_Validity_Checks, Sticky_Broadcasts, Empty_Pending_Intents, Dynamic_or_exported_Broadcast_Receivers, Ecb_Instances, Javascript_Enabled, Overwritable_Cookie, Weak_Dynamic_Invocation_Checks_On_Content_Providers) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?); '''
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
		truncateDataDB = ''' DELETE FROM DataDB '''
		truncateBytecodeDB = ''' DELETE FROM BytecodeDB '''
		try:
			c = conn.cursor()
			c.execute(truncateDataDB)
			c.execute(truncateBytecodeDB)
			conn.commit()
		except Error as e:
			print(e)
			



		