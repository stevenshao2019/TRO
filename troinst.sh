sudo apt update
sudo apt upgrade -y
sudo apt install -y curl
sudo apt install certbot
curl -LO https://github.com/trojan-gfw/trojan/releases/download/v1.16.0/trojan-1.16.0-linux-amd64.tar.xz
tar -xvJf trojan-1.16.0-linux-amd64.tar.xz
sudo mv trojan /usr/local/bin/
sudo mkdir /etc/trojan
sudo ufw allow 443/tcp
sudo ufw reload
