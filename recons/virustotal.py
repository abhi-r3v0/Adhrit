# !/usr/bin/env python

import requests
import hashlib
from prettytable import PrettyTable


def api_check(apk_name):
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

    parameters = {'apikey': '099d11fe87377f9c8cfe0ae00b5c40fd04f7d4c425972cf09e4cd47d82a0c6df', 'resource': md5digest}
    header = {
        "Accepted-Encoding": "gzip, deflate",
        "User-Agent": "gzip, Test"
    }

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

    if pos == 1:
        print t

    print "\n"
