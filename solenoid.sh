#!/bin/bash

snap install docker
docker pull moonrockkk/safari:16.0
docker pull selenoid/video-recorder
wget https://github.com/aerokube/selenoid/releases/download/1.10.10/selenoid_linux_amd64 -O /home/cm
chmod +x ./home/cm
mkdir /home/config
wget https://raw.githubusercontent.com/moonrockk/WebKit_Pro/main/browsers.json -O /home/config/browsers.json
wget https://raw.githubusercontent.com/moonrockk/WebKit_Pro/main/solenoid.service -O /lib/systemd/system/selenoid.service
systemctl daemon-reload
systemctl enable selenoid.service
reboot
