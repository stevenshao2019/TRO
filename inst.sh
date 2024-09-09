wget -N --no-check-certificate  https://raw.githubusercontent.com/stevenshao2019/TRO/master/troinst.sh
wget -N --no-check-certificate  https://raw.githubusercontent.com/stevenshao2019/TRO/master/trostart.sh
wget -N --no-check-certificate  https://raw.githubusercontent.com/stevenshao2019/TRO/master/crtssl.sh
wget -N --no-check-certificate  https://raw.githubusercontent.com/stevenshao2019/TRO/master/trojan.service
wget -N --no-check-certificate  https://raw.githubusercontent.com/stevenshao2019/TRO/master/config.json
chmod +x *.sh
./troinst.sh
sudo apt-get install expect
./crtssl.sh
./trostart.sh

