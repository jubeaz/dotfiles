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
    
    
    if data['Status'] is None:
        # block['text'] = 'unknown'
        str = " " + "NordVPN: " + "Unknown"
    else:
        # block['text'] = data['Status']
        str = " " + "NordVPN: " + data['Status']
    print(str, end='')
    #print(json.dumps(data))

