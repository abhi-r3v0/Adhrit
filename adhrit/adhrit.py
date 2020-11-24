# !/usr/bin/env python3

# ADHRIT is an open source tool for Android apk analysis
# to extract maximum amount of information from an apk


from colorama import Fore, Style
from adhrit.recons.manifest_analysis import man_analyzer
from adhrit.recons.dbaccess import dbconnection, insert_statustable
from adhrit.recons.clean import cleaner


__author__ = 'Abhishek J M ( jmabhishek4@gmail.com, @HawkSpawn )'
__version__ = "0.2"


class Adhrit:

	def __init__(self):
		self.apk_name = ""

	
	@staticmethod
	def cleanproject(apk_name):
		cleaner(apk_name)

	@staticmethod
	def manifestanalyzer(apk_name, hash_of_apk):
		man_analyzer(apk_name, hash_of_apk)

def welcome():
		print(Fore.RED + Style.BRIGHT)
		print("          ####  #######      ##      ##  ########    ##  ############")
		print("         ## ##  ##     ##    ##      ##  ##     ##   ##       ##")
		print("        ##  ##  ##      ##   ##      ##  ##      ##  ##       ##")
		print("       ##   ##  ##       ##  ##      ##  ##      ##  ##       ##")
		print("      ##    ##  ##       ##  ##      ##  ##     ##   ##       ##")
		print("     #########  ##       ##  ##########  ##   ##     ##       ##")
		print("    ##      ##  ##       ##  ##      ##  ##  ##      ##       ##")
		print("   ##       ##  ##       ##  ##      ##  ##   ##     ##       ##")
		print("  ##        ##  ##      ##   ##      ##  ##    ##    ##       ##")
		print(" ##         ##  ##     ##    ##      ##  ##     ##   ##       ##")
		print("##          ##  #######      ##      ##  ##      ##  ##       ##")
		print("\n\n")

def main(hash_of_apk):
	adhrit = Adhrit()
	apk_name = 'app.apk'
	adhrit.manifestanalyzer(apk_name, hash_of_apk)

	#--------------------------------
	dbname = "adhrit.db"
	dbconstatus = dbconnection(dbname)
	query = f"UPDATE StatusDB SET Manifest='complete' WHERE Hash='{hash_of_apk}';"
	addedornot = insert_statustable(dbconstatus, query)
   
 
