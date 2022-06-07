vi /etc/apt/sources.list
deb http://archive.ubuntu.com/ubuntu/ bionic universe
sudo apt update
apt-get -y install vnc4server

vncserver :1
vncserver -kill :1
mv xstartup.txt /root/.vnc/xstartup
chmod u+x /root/.vnc/xstartup
chmod 755 /root/.vnc/xstartup