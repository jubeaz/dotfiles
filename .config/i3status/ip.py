#!/usr/bin/env python3

import subprocess
import json
import urllib.request

if __name__ == '__main__':
    result = subprocess.run(['nordvpn', 'status'], stdout=subprocess.PIPE)
    output = result.stdout.decode('utf-8').split('\n')

    data = {}
    status = ['Status', 'Uptime', 'Current server', 'Country', 'City', 'Server IP',
        'Current technology', 'Current protocol', 'Transfer']
    for line in output:
        if any(x in line for x in status):
            key, value = line.split(':', 1)
            clean = key.replace('\r', '').replace('-', '').strip()
            data[clean] = value.strip()
    
    
    if data['Status'] == 'Connected':
        # block['text'] = 'unknown'
        strvpn = " ,NordVPN"
    else:
        # block['text'] = data['Status']
        strvpn = ""

    with urllib.request.urlopen("https://ipv4.geojs.io/v1/ip/geo.json") as url:
        data = json.loads(url.read().decode())
        str = " " + data['ip'] + " (" + data['city'] + ", " + data['country_code'] + f"{strvpn})"
        print(str, end='')
