# !/usr/bin/env python3

import configparser
import requests
import hashlib
from prettytable import PrettyTable
from colorama import Fore, Style


def api_check(apk_name):
    config = configparser.ConfigParser()
    config.read_file(open(r'config'))

    vt_apikey = config.get('config-data', 'vt_api_key')

    print(Fore.YELLOW + Style.BRIGHT + "\n--------------------------------------------------")
    print(Fore.GREEN + Style.BRIGHT + "[INFO] " + Fore.BLUE + "SCANNING FOR MALWARE TRACE\n")
    if str(vt_apikey) == '':
        print(Fore.RED + Style.BRIGHT + "\t[!] API key not added. Please add the VirusTotal API key")
        return
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
        response = requests.get('https://www.virustotal.com/vtapi/v2/file/report', params=parameters, headers=header)
        json_response = response.json()

        if json_response['response_code'] == 0:
            print(Fore.RED + Style.BRIGHT + "\t[!] Error Getting Details. Aborting\n")
            return
        if json_response['positives'] > 0:
            print(Fore.BLUE + Style.BRIGHT + "\n\t[+] " + Fore.YELLOW + "Positives Found: " + str(json_response['positives']))
            pos = 1
            for engine, det in list(json_response['scans'].items()):
                if det["detected"]:
                    t.add_row([engine, det["result"]])
        else:
            print(Fore.RED + Style.BRIGHT + "\n[-] " + Fore.YELLOW + "No Positives Found")

    except requests.ConnectionError:
        print(Fore.RED + Style.BRIGHT + "[!] Error connecting to VirusTotal")

    if pos == 1:
        print(t)

    print("\n")

