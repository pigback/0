curl -s https://install.zerotier.com | sudo bash
#alpine：apk update && apk add zerotier-one
sudo zerotier-one -d
sudo zerotier-cli join
sudo zerotier-cli listnetworks
 
apt install nethogs
apt install xdotool