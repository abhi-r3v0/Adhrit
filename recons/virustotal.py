# !/usr/bin/env python

import requests
import hashlib
import json


def api_check(apk_name):
    print "\n\n"
    print "[+] --------  Scanning for Malware signature  --------"
    print "\n"
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
    parsed_response = json.dumps(json_response, indent=4, sort_keys=True)
    print parsed_response
    print "\n\n"
    print "[+][+][+]     COMPLETE     [+][+][+]"
    print "\n\n"
