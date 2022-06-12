sudo vi /etc/apt/sources.list
deb http://archive.ubuntu.com/ubuntu/ bionic universe
sudo apt update
apt-get -y install vnc4server
 
sudo vncserver :1
vncserver -kill :1
sudo mkdir /root/.vnc
sudo cp xstartup.txt /root/.vnc/xstartup
sudo chmod u+x /root/.vnc/xstartup
sudo chmod 755 /root/.vnc/xstartup