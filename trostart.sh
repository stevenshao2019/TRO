cp config.json /etc/trojan/config.json
cp trojan.service /etc/systemd/system/trojan.service

sudo systemctl enable trojan
sudo systemctl start trojan
