# !/usr/bin/env python3

# ADHRIT is an open source tool for Android apk analysis
# to extract maximum amount of information from an apk

import argparse
import configparser
from colorama import Fore, Style
from adhrit.recons.apk_extract import apk_info
from adhrit.recons.vapp import vapp_find
from adhrit.recons.virustotal import api_check
from adhrit.recons.smali_extract import smali_de
from adhrit.recons.smali_extract import smali_re
from adhrit.recons.smali_extract import apk_sign
from adhrit.recons.smali_extract import inj_check
from adhrit.recons.manifest_analysis import man_analyzer
from adhrit.recons.smarser.parser import parser
from adhrit.recons.native_recon import lib_pwn
from adhrit.recons.dynamic import adb_con
from adhrit.recons.clean import cleaner
from adhrit.recons.root import check_root
from adhrit.recons.reset import reset_scanid, reset_db
from adhrit.recons.smarser.parser import parser


__author__ = 'Abhishek J M ( jmabhishek4@gmail.com, @HawkSpawn )'
__version__ = "0.2"


class Adhrit:

	def __init__(self):
		self.apk_name = ""

	@staticmethod
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
		print(Fore.YELLOW + Style.BRIGHT + "\n\n| Project\t\t:\t" + Fore.GREEN + "www.github.com/abhi-r3v0/Adhrit")
		print(Fore.YELLOW + Style.BRIGHT + "| Twitter\t\t:\t" + Fore.GREEN + "@0xADHRIT")
		print(Fore.YELLOW + Style.BRIGHT + "| Author\t\t:\t" + Fore.GREEN + __author__)
		print(Fore.YELLOW + Style.BRIGHT + "| Version\t\t:\t" + Fore.GREEN + __version__)


	check_deps = configparser.ConfigParser()
	check_deps.read('adhrit/config')
	if check_deps.get('config-data', 'dependencies_status') == 'incomplete':
		print(Fore.RED + "\n[ERROR] Not all the necessary tools are installed! Please run " + Fore.YELLOW + 'python3 installer.py' + Fore.RED + " again")
		exit()
	else:
		pass

	print("\n\n")

	# Clean the tool directory for a new project
	@staticmethod
	def cleanproject(apk_name):
		cleaner(apk_name)

	# Extract All the contents of the APK into a directory
	@staticmethod
	def apkextractor(apk_name):
		apk_info(apk_name)

	@staticmethod
	def manifestanalyzer(apk_name):
		man_analyzer(apk_name)

	@staticmethod
	def resetdb():
		reset_db()

	@staticmethod
	def reset_scan_id():
		reset_scanid()

	# # Bytecode Analysis
	# @staticmethod
	# def bytecodeanalyzer():
	# 	parser()

	# # Check for virtual app droppers
	# @staticmethod
	# def vappsearch(apk_name):
	#     vapp_find(apk_name)

	# # Check if the APK has been identified by VirusTotal database
	# @staticmethod
	# def vtanalyzer(apk_name):
	#     api_check(apk_name)

	# # Extract the source code of the APK in smali
	# @staticmethod
	# def smaliextractor(apk_name):
	#     smali_de(apk_name)



	# # Recompile smali back into APK
	# @staticmethod
	# def smalirecompile(apk_name):
	#     smali_re(apk_name)

	# # Sign the apk with a generic signature. For educaational purposes only!
	# @staticmethod
	# def apk_signing(apk_name):
	#     apk_sign(apk_name)

	# # Check for string injection points
	# @staticmethod
	# def smali_inj(apk_name, flag_format=''):
	#     inj_check(apk_name, flag_format)

	# # Analyze native library
	# @staticmethod
	# def native_recon():
	#     lib_pwn()

	# # Install the APK in an emulator and analyze its activities
	# @staticmethod
	# def dynamicanalysis(apk_name):
	#     adb_con(apk_name)

	# # Check for root access in the emulator/device
	# @staticmethod
	# def checkroot():
	#     check_root()


def main():
	adhrit = Adhrit()

	# Adhrit Welcome ASCII
	adhrit.welcome()
	apk_name = 'app.apk'
	adhrit.apkextractor(apk_name)
	# adhrit.manifestanalyzer(apk_name)
	# adhrit.bytecodeanalyzer()
	adhrit.cleanproject(apk_name)

	# adhrit.resetdb()
	# adhrit.reset_scan_id()

	
	# parser = argparse.ArgumentParser(description="Android Dynamic Handling, Reversing and Instrumentation Toolkit")
	# parser.add_argument("-pen", help="Run ADHRIT in pentest mode")
	# parser.add_argument("-mal", help="Run ADHRIT in malware analysis mode")
	# parser.add_argument("-c", help="Clean up for a new project")
	# parser.add_argument("-a", help="Dump package info and extract contents")
	# parser.add_argument("-x", help="Extract APK contents only")
	# parser.add_argument("-p", help="Check for virtual apps")
	# parser.add_argument("-s", help="Source code of the APK in Smali")
	# parser.add_argument("-b", help="Recompile smali back into APK")
	# parser.add_argument("-m", help="Sign the APK")
	# parser.add_argument("-i", help="Check for injection points")
	# parser.add_argument("-pwn", help="Scan for vulnerabilities", action="store_true")
	# parser.add_argument("--flag", help="Check for CTF flags")
	# parser.add_argument("-w", help="Welcome :P", action='store_true')
	# parser.add_argument("-v", help="Check footprints in VirusTotal database")
	# parser.add_argument("-d", help="Analyse the behaviour dynamically in a VM")
	# parser.add_argument("-cr", help="Check device root status", action='store_true')
	# parser.add_argument("-l", help="Extract, parse and analyze manifest")
	# parser.add_argument("-r", help="Analyze native library", action='store_true')
	# args = parser.parse_args()




	# if args.pen:
	#     adhrit.cleanproject(args.pen)
	#     adhrit.apkextractor(args.pen)
	#     adhrit.native_recon()
	#     adhrit.manifestanalyzer(args.pen)
	#     adhrit.smaliextractor(args.pen)
	#     adhrit.bytecodeanalyzer()
	#     adhrit.smali_inj(args.pen)

	# if args.mal:
	#     adhrit.vtanalyzer(args.mal)
	#     adhrit.vappsearch(args.mal)

	# if args.c:
	#     adhrit.cleanproject(args.c)

	# if args.a:
	#     adhrit.cleanproject(args.a)
	#     adhrit.vtanalyzer(args.a)
	#     adhrit.apkextractor(args.a)
	#     adhrit.manifestanalyzer(args.a)
	#     adhrit.native_recon()
	#     adhrit.vappsearch(args.a)
	#     adhrit.smaliextractor(args.a)
	#     adhrit.smali_inj(args.a)
	#     adhrit.bytecodeanalyzer()

	# elif args.x:
	#     adhrit.cleanproject(args.x)
	#     adhrit.apkextractor(args.x)

	# elif args.p:
	#     adhrit.vappsearch(args.p)

	# elif args.s:
	#     adhrit.smaliextractor(args.s)

	# elif args.b:
	#     adhrit.smalirecompile(args.b)

	# elif args.m:
	#     adhrit.welcome()
	#     adhrit.apk_signing(args.m)

	# elif args.i:
	#     adhrit.smali_inj(args.i, args.flag)

	# elif args.pwn:
	#     adhrit.bytecodeanalyzer()

	# elif args.r:
	#     adhrit.native_recon()

	# elif args.w:
	#     adhrit.welcome()

	# elif args.v:
	#     adhrit.vtanalyzer(args.v)

	# elif args.d:
	#     adhrit.dynamicanalysis(args.d)

	# elif args.cr:
	#     adhrit.checkroot()

	# elif args.l:
	#     adhrit.manifestanalyzer(args.l)


if __name__ == "__main__":
	main()
