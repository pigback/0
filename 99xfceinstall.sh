apt-get -y update
apt-get -y upgrade
sudo apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils

vncserver :1
vncserver -kill :1
cp xstartup.txt /root/.vnc/xstartup
chmod u+x /root/.vnc/xstartup
chmod 755 /root/.vnc/xstartup
sudo apt-get install xfonts-wqy
echo "重启中,请稍等"
#以下是安装Chrome 
#sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
#wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
#sudo apt-get -y update
#sudo apt-get -y install google-chrome-stable