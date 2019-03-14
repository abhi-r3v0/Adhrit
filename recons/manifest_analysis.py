# !/usr/bin/env python3

import os
import zipfile
import xml.etree.ElementTree as Et
from colorama import Fore


def man_scanner():

    # noinspection PyGlobalUndefined
    global pkg_name
    exp_status = 0
    c1 = 0
    c2 = 0
    c3 = 0
    global main_act_name

    print(Fore.YELLOW + "\n--------------------------------------------------")
    print(Fore.GREEN + "[INFO] " + Fore.BLUE + "MANIFEST ANALYSIS")
    perm_severe = {"android.permission.ACCESS_SUPERUSER": "Requests for super user (SU) access.",
                   "android.permission.USE_FINGERPRINT": "Requests for fingerprint.",
                   "android.permission.MANAGE_DOCUMENTS": "Requests for managing documents.",
                   "android.permission.READ_FRAME_BUFFER": "The application maybe trying to screenshot.",
                   "android.permission.READ_SMS": "Can read SMS.",
                   "android.permission.RECEIVE_SMS": "Can receive incoming messages SMS.",
                   "android.permission.RECEIVE_WAP_PUSH": "Can receive WAP push messages.",
                   "android.permission.RECORD_AUDIO": "Requests to record audio.",
                   "android.permission.READ_PHONE_STATE": "Can read phone number, current network details etc.",
                   "android.permission.READ_PHONE_NUMBERS": "Can read phone numbers from the device.",
                   "android.permission.ACCESS_COARSE_LOCATION": "Can access approximate location of the device.",
                   "android.permission.ACCESS_FINE_LOCATION": "Can access the exact location.",
                   "android.permission.ADD_VOICEMAIL": "Can add a new voice mail account.",
                   "android.permission.ANSWER_PHONE_CALLS": "Can answer phone calls without user's confirmation.",
                   "android.permission.BODY_SENSORS": "Can access body sensors like heart rate sensor etc.",
                   "android.permission.CALL_PHONE": "Can initiate a phone call without user confirmation",
                   "android.permission.CAMERA": "Can use camera with/out user being informed.",
                   "android.permission.GET_ACCOUNTS": "Can get a list of accounts in the device.",
                   "android.permission.PROCESS_OUTGOING_CALLS": "Can redirect or abort an outgoing call.",
                   "android.permission.READ_CALENDAR": "Can read calender events.",
                   "android.permission.READ_CALL_LOG": "Can read call log.",
                   "android.permission.READ_CONTACTS": "Can access user's contacts.",
                   "android.permission.READ_EXTERNAL_STORAGE": "Can read external storage.",
                   "android.permission.WRITE_EXTERNAL_STORAGE": "Can write to external storage.",
                   "android.permission.USE_SIP": "Allows to use SIP service.",
                   "android.permission.WRITE_CALENDAR": "Allows to write the user's calendar data.",
                   "android.permission.WRITE_CALL_LOG": "Allows to write (but not read) the user's call log data.",
                   "android.permission.WRITE_CONTACTS": "Allows to write the user's contacts data."
                   }


    xmlfile = 'Manifest.xml'
    if os.path.exists(xmlfile):
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Manifest found. Starting analysis\n")
        tree = Et.parse(xmlfile)
        root = tree.getroot()
        for pkg_attribs in root.attrib:
            if pkg_attribs == "package":
                pkg_name = root.attrib[pkg_attribs]
        print(Fore.BLUE + "\n\t[+] " + Fore.YELLOW + "Critical Permission Analysis\n")
        permissions = root.findall("uses-permission")
        if len(permissions) <= 1:
            print(Fore.RED + "\n\t\t[-] " + Fore.YELLOW + "No critical permissions found. Listing all permissions.")
            for perm in permissions:
                for att in perm.attrib:
                    c2 += 1
                    print(Fore.BLUE + "\n\t\t\t " + "[>] " + Fore.YELLOW + perm.attrib[att])

        for perm in permissions:
            for att in perm.attrib:
                for permname, permvalue in perm_severe.items():
                    if perm.attrib[att] == permname:
                        c1 += 1
                        print(Fore.BLUE + "\t\t " + "[>] " + Fore.YELLOW + permvalue)

        backup_status = root.findall("application")
        for acts in backup_status:
            for bckp in acts.attrib:
                if bckp == "{http://schemas.android.com/apk/res/android}allowBackup":
                    if acts.attrib[bckp] == "true":
                        print(Fore.RED + "\n\n\t[+] " + Fore.YELLOW + "The application allows backup.")
                        print(Fore.LIGHTRED_EX + "\n\t\tData/files maybe left in the device even after the application is uninstalled.")
                    else:
                        print(Fore.BLUE + "\n\n\t[-] " + Fore.YELLOW + "Backup disabled.")
                        print(Fore.YELLOW + "\n\t\tThe application doesn't leave behind data/files after uninstallation.")

        for debugattrib in backup_status:
            for dbgstatus in debugattrib.attrib:
                if dbgstatus == "{http://schemas.android.com/apk/res/android}debuggable":
                    if debugattrib.attrib[dbgstatus] == "true":
                        print(Fore.RED + "\n\n\t[+] " + Fore.YELLOW + "The application is debuggable.")
                        print(Fore.LIGHTRED_EX + "\n\t\tSensitive data can be logged while the application runs.")
                    else:
                        print(Fore.BLUE + "\n\n\t[-] " + Fore.YELLOW + "Debugging disabled.")
                        print(Fore.YELLOW + "\n\t\tThe application doesn't allow logging data from the application.")


        acts_list = root.findall("application")
        for acts in acts_list:
            for exp in acts:
                for exp_tag in exp.attrib:
                    if exp_tag == "{http://schemas.android.com/apk/res/android}exported":
                        exp_status += 1
                        if exp.attrib[exp_tag] == "true":
                            exp_name = "{http://schemas.android.com/apk/res/android}name"
                            exp_name_strip = str(exp.attrib[exp_name]).split('.')
                            exp_name_len = len(exp_name_strip)
                            exp_activity_name = exp_name_strip[exp_name_len - 1]
                            print(Fore.RED + "\n\n\t[!] " + Fore.YELLOW + "The activity " + Fore.RED + str(exp.attrib[exp_name]) + Fore.YELLOW + " is exported")
                            print(Fore.LIGHTRED_EX + "\n\t\tAny application/ADB command can launch this activity bypassing the actual application routine!")
                            poc_cmd = "adb shell am start -n " + pkg_name + "/." + exp_activity_name
                            print(Fore.BLUE + "\n\t\t[+] POC ADB COMMAND: " + Fore.GREEN + poc_cmd)

        if exp_status == 0:
            print(Fore.RED + "\n\n\t[+] " + Fore.YELLOW + "No exported activities found.")
            print(Fore.YELLOW + "\n\t\tThe application has no activity that can be launched bypassing the actual routine of the application.\n")


        for cust_perm in acts_list:
            for cust in cust_perm:
                for activity in cust:
                    if activity.tag == "intent-filter":
                        for intentname, intentvalue in cust.attrib.items():
                            print(Fore.RED + "\n\n\t[!] " + Fore.YELLOW + "Intent filter found for ACTIVITY: " + Fore.RED + str(intentvalue))
                            for child in activity:
                                if child.tag == "action":
                                    for name, value in child.attrib.items():
                                        if value.startswith("android.intent.action"):
                                            if value == "android.intent.action.MAIN":
                                                main_act_strip = intentvalue.split('.')
                                                main_act_len = len(main_act_strip)
                                                main_act_name = main_act_strip[main_act_len - 1]
                                            c3 += 1
                                            print(Fore.RED + "\n\t\t[!] " + Fore.YELLOW + "ACTION: " + Fore.RED + str(value))
                                        else:
                                            print(Fore.RED + "\n\t\t[!] " + Fore.YELLOW + "ACTION: " + Fore.RED + str(value))
                                if child.tag == "category":
                                    for catname, catvalue in child.attrib.items():
                                        print(Fore.RED + "\n\t\t[!] " + Fore.YELLOW + "CATEGORY: " + Fore.RED + str(catvalue))

                                if child.tag == "data":
                                    for dname, dvalue in child.attrib.items():
                                        print(Fore.RED + "\n\t\t[!] " + Fore.YELLOW + "TYPE: " + Fore.RED + str(dvalue))

        print(Fore.YELLOW + "\n\n\t[+] Main Activity: " + Fore.GREEN + pkg_name + "/." + main_act_name)
        poc_cmd_main = "adb shell am start -n " + pkg_name + "/." + main_act_name
        print(Fore.BLUE + "\n\t\t[+] POC ADB COMMAND: " + Fore.GREEN + poc_cmd_main)

        if c3 > 1:
            print(Fore.RED + "\n\n\t[+] " + Fore.YELLOW + "Intent filters found. The app maybe communicating with other apps/app components")
            print(Fore.YELLOW + "\n\t\tThe application maybe communicating with other applications' components.\n")

        if c3 == 0:
            print(Fore.YELLOW + "\n\n\t[+] Intent filters not found. The app may not be communicating with other apps/app components")
            print(Fore.YELLOW + "\n\t\tThe application may not be communicating with other applications' components.\n")


def man_analyzer(apk_name):

    if os.path.exists("Manifest.xml"):
        man_scanner()

    elif os.path.exists("Extracts") and os.path.isdir("Extracts"):
        os.system('cp Extracts/AndroidManifest.xml ../')
        mandmp = 'java -jar tools/AXML.jar  AndroidManifest.xml  >> Manifest.xml'
        os.system(mandmp)
        os.system('rm AndroidManifest.xml')
        man_scanner()

    elif os.path.abspath(apk_name).lower().endswith('.apk'):
        with zipfile.ZipFile(apk_name, 'r') as z:
            for name in z.namelist():
                if name.startswith('AndroidManifest') and name.endswith('.xml'):
                    z.extract(name)
                    mandmp = 'java -jar tools/AXML.jar  AndroidManifest.xml  >> Manifest.xml'
                    os.system(mandmp)
                    os.system('rm AndroidManifest.xml')
                    man_scanner()

    else:
        exit("Input not found")
