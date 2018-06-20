#!/bin/bash
unclutter -idle 0 &
# Disable any form of screen saver / screen blanking / power management
xset s off
xset s noblank
xset -dpms
#sudo killall -9 chromium-browser
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences
chromium-browser --kiosk --noerrdialogs -disable-infobars --window-size=400,244 --window-position=0,-60 --password-store=basic /home/pi/Pi-Kitchen-Dashboard/index.html &

