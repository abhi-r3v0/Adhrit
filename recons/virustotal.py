# !/usr/bin/env python

import ConfigParser
import requests
import hashlib
from prettytable import PrettyTable


def api_check(apk_name):
    config = ConfigParser.ConfigParser()
    config.readfp((open(r'config')))

    vt_apikey = config.get('config-data', 'vt_api_key')

    print "\n"
    print "--------------------------------------------------"
    print "[+] SCANNING FOR MALWARE TRACE"
    print "--------------------------------------------------"
    print "\n"
    pos = 0
    t = PrettyTable(['ENGINE', 'MALWARE'])
    msum = hashlib.md5()
    with open(apk_name, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            msum.update(chunk)
    md5digest = msum.hexdigest()

    parameters = {'apikey': vt_apikey, 'resource': md5digest}
    header = {
        "Accepted-Encoding": "gzip, deflate",
        "User-Agent": "gzip, Test"
    }

    try:
        response = requests.get('https://www.virustotal.com/vtapi/v2/file/report',
                            params=parameters, headers=header)
        json_response = response.json()

        if json_response['response_code'] == 0:
            print "\t[!] Error Getting Details. Aborting\n"
            return
        if json_response['positives'] > 0:
            print "\n\t[+] Positives Found: " + str(json_response['positives'])
            pos = 1
            for engine, det in json_response['scans'].iteritems():
                if det["detected"]:
                    t.add_row([engine, det["result"]])
        else:
            print "\n[-] No Positives Found"

    except:
        print "\n Error connecting to VirusTotal"

    if pos == 1:
        print t

    print "\n"