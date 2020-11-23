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
		create_table = ''' CREATE TABLE IF NOT EXISTS DataDB(Hash text  NOT NULL PRIMARY KEY, ApplicationInfo text, Permission text, CriticalPerm text, CustomPerm text, Activity text, ExportedActivity text, BroadcastReceiver text, ExportedReceiver text, Deeplinks text, Taskaffinity text, Service text, ExportedService text, Provider text, ImplicitIntent text); '''
		try:
			c = conn.cursor()
			c.execute(create_table)
		except Error as e:
			print(e)


# Creating a table for storing data from Bytecode Scanning
def create_bytecode_table(conn):
	if conn is not None:
		create_table = ''' CREATE TABLE IF NOT EXISTS BytecodeDB(Hash text  NOT NULL PRIMARY KEY, Unsafe_Intent_Urls text, File_Access_Via_Urls text, Content_Access_Via_Urls text, Unencrypted_Socket_Communications text, Insecure_Socket_Factory text, No_Tls_Validity_Checks text, Sticky_Broadcasts text, Empty_Pending_Intents text, Dynamic_or_exported_Broadcast_Receivers text, Ecb_Instances text, Javascript_Enabled text, Overwritable_Cookie text, Weak_Dynamic_Invocation_Checks_On_Content_Providers text, execSQL_used text, SharedPrefs_usage text, SQLite_DB_usage text); '''
		try:
			c = conn.cursor()
			c.execute(create_table)
		except Error as e:
			print(e)


# Creating a table for storing data from Secrets Scanning
def create_secrets_table(conn):
	if conn is not None:
		create_table = ''' CREATE TABLE IF NOT EXISTS SecretsDB(Hash text  NOT NULL, Urls text, Strings text, Api_keys text); '''
		try:
			c = conn.cursor()
			c.execute(create_table)
		except Error as e:
			print(e)

# Creating a table for storing the status of the scan
def create_status_table(conn):
	if conn is not None:
		create_table = ''' CREATE TABLE IF NOT EXISTS StatusDB(Hash text  NOT NULL PRIMARY KEY, Manifest text, Bytecode text, Secrets text); '''
		try:
			c = conn.cursor()
			c.execute(create_table)
		except Error as e:
			print(e)

# Inserting data into the data table
def insert_datatable(conn, datadetails):
	if conn is not None:
		insert_table = ''' INSERT INTO DataDB(Hash, ApplicationInfo, Permission, CriticalPerm, CustomPerm, Activity, ExportedActivity, BroadcastReceiver, ExportedReceiver, Deeplinks, Taskaffinity, Service, ExportedService, Provider, ImplicitIntent) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?); '''
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
		insert_table = ''' INSERT INTO BytecodeDB(Hash, Unsafe_Intent_Urls, File_Access_Via_Urls, Content_Access_Via_Urls, Unencrypted_Socket_Communications, Insecure_Socket_Factory, No_Tls_Validity_Checks, Sticky_Broadcasts, Empty_Pending_Intents, Dynamic_or_exported_Broadcast_Receivers, Ecb_Instances, Javascript_Enabled, Overwritable_Cookie, Weak_Dynamic_Invocation_Checks_On_Content_Providers, execSQL_used, SharedPrefs_usage, SQLite_DB_usage) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?); '''
		try:
			c = conn.cursor()
			c.execute(insert_table, datadetails)
			conn.commit()
		except Error as e:
			print(e)
		return c.lastrowid


# Inserting data into the Secrets table
def insert_secretstable(conn, datadetails):
	if conn is not None:
		insert_table = ''' INSERT INTO SecretsDB(Hash, Urls, Strings, Api_keys) VALUES(?,?,?,?); '''
		try:
			c = conn.cursor()
			c.execute(insert_table, datadetails)
			conn.commit()
		except Error as e:
			print(e)
		return c.lastrowid

# Inserting data into the Secrets table
def insert_statustable(conn, query):
	if conn is not None:
		try:
			c = conn.cursor()
			c.execute(query)
			conn.commit()
		except Error as e:
			print(e)
		return c.lastrowid


# def insert_statustable(conn, datadetails):
# 	if conn is not None:
# 		insert_table = ''' INSERT INTO StatusDB(Hash, Status) VALUES(?,?); '''
# 		try:
# 			c = conn.cursor()
# 			c.execute(insert_table, datadetails)
# 			conn.commit()
# 		except Error as e:
# 			print(e)
# 		return c.lastrowid

# Query for select Statement
def select_query(query):
	con = sqlite3.connect('adhrit.db')
	with con:
		con.row_factory = sqlite3.Row
		cur = con.cursor()
		cur.execute(query)
		rows = cur.fetchall()
		return rows


# Reset the DataDB
def truncate_table(conn):
	if conn is not None:
		truncateDataDB = ''' DELETE FROM DataDB '''
		truncateBytecodeDB = ''' DELETE FROM BytecodeDB '''
		truncateSecretsDB = ''' DELETE FROM SecretsDB '''
		try:
			c = conn.cursor()
			c.execute(truncateDataDB)
			c.execute(truncateBytecodeDB)
			c.execute(truncateSecretsDB)
			conn.commit()
		except Error as e:
			print(e)

