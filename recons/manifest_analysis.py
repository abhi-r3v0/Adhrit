# !/usr/bin/env python3

import os
import xml.etree.ElementTree as Et


def man_analyzer():
    c1 = 0
    c2 = 0
    print("\n--------------------------------------------------\n")
    print("ANALYSIS")
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
        print("\n\t[+] Manifest found. Starting analysis\n")
        tree = Et.parse(xmlfile)
        root = tree.getroot()
        print("\n\t[+] Critical Permission Analysis\n")
        permissions = root.findall("uses-permission")
        if len(permissions) <= 1:
            print("\n\t\t[-] No critical permissions found. Listing all permissions.")
            for perm in permissions:
                for att in perm.attrib:
                    c2 += 1
                    print("\n\t\t\t " + str(c2) + "> " + perm.attrib[att])

        for perm in permissions:
            for att in perm.attrib:
                for permname, permvalue in perm_severe.items():
                    if perm.attrib[att] == permname:
                        c1 += 1
                        print("\t\t " + str(c1) + "> " + permvalue)

        export_acts = root.findall("application")
        for acts in export_acts:
            for expor in acts.attrib:
                if expor == "{http://schemas.android.com/apk/res/android}allowBackup":
                    if acts.attrib[expor] == "true":
                        print("\n\n\t[+] The application allows backup.")
                        print("\n\t\tData/files maybe left in the device even after the application is uninstalled.")
                    else:
                        print("\n\n\t[-] Backup disabled.")
                        print("\n\t\tThe application doesn't leave behind data/files after uninstallation.")

    else:
        print("\n[!] Manifest not found. Please extract the APK using '-x' or '-a'.")
