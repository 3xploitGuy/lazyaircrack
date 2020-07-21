<p align="left">
 <a><img title="Built With Love" src="https://forthebadge.com/images/badges/built-with-love.svg" ></a>
 </p>

# LazyAircrack 
The main purpose of the tool is automating wifi attack. It is a automated bash script. Crack the four way handshake and get into the network.<br/>

[Watch tutorial on youtube](https://www.youtube.com/watch?v=tdhVCyhH5Y8)


## Screenshots

<img src="https://user-images.githubusercontent.com/46316908/88089022-f8f56f00-cba8-11ea-82e1-a940a8089db1.png" width="100%"></img>

## This tool uses 2 methods:
**1.Wifi Hacking:**
Get all the wireless traffic around you listed, select the victim and crack the password using handshake packet. 
The by default dictionary for cracking passowrd is rockyou.txt from linux, don't forget to replace it with your custom dictionary.

**2.Wifi Jammer:**
It creates denial of service (DoS) condition against any wifi router by continously sending the deauthentication packets resulting in disrupted connection of all connected users to it.

<b>Note:</b> at the end of the script all the log files are deleted, if you abort the script in middle for whatsoever reason - delete all the log files manually if created.
To get a handshake, there should be at least one active user using the wifi.

## Installing and requirements
- aircrack-ng
- Linux or Unix-based system (Currently tested only on Kali Linux rolling)
- Root access

### Installing
+ **For Linux :**
```
~ ❯❯❯ git clone https://github.com/3xploitGuy/lazyaircrack.git

~ ❯❯❯ cd lazyaircrack

~/lazyaircrack ❯❯❯ chmod +x lazyaircrack.sh

~/lazyaircrack ❯❯❯ chmod +x airplay.sh

~/lazyaircrack ❯❯❯ ./lazyaircrack.sh
```

## Basics

> BSSID: Basic service set identifiers, it recognizes the access point or router uniquely because it has address which creates the wireless network.

> Channel: As Wi-Fi data is digital, the signals are transmited and received on a certain frequency also known as channel.


## Contact
[Gmail](mailto:3xploitguy@gmail.com)
[Website](https://sandeshyadav.000webhostapp.com)

## Disclaimer

LazyAircrack is created to help in penetration testing and it's not responsible for any misuse or illegal purposes.

Feel free to raise any issue on github if you stuck somewhere with the script.

## License

LazyAircrack is under the terms of the [MIT License](https://www.tldrlegal.com/l/mit).
