# !/usr/bin/env python3

import os
import xml.etree.ElementTree as Et


def man_analyzer():
    c = 0
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
    print("\n--------------------------------------------------\n")
    xmlfile = 'Manifest.xml'
    if os.path.exists(xmlfile):
        print("\n[+] Manifest found. Starting analysis\n")
        tree = Et.parse(xmlfile)
        root = tree.getroot()
        permissions = root.findall("uses-permission")
        print("\n[+] Permission Analysis\n")
        for perm in permissions:
            for att in perm.attrib:
                for permname, permvalue in perm_severe.items():
                    if perm.attrib[att] == permname:
                        c += 1
                        print("\t " + str(c) + "> " + permvalue)
