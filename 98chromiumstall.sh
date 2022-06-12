#sudo vi /etc/apt/sources.list.d/debian.list
#deb http://deb.debian.org/debian buster main
#deb http://deb.debian.org/debian buster-updates main
#deb http://deb.debian.org/debian-security buster/updates main

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DCC9EFBF77E11517
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A

sudo vi /etc/apt/preferences.d/chromium.pref 
# Note: 2 blank lines are required between entries
Package: *
Pin: release a=eoan
Pin-Priority: 500

Package: *
Pin: origin "deb.debian.org"
Pin-Priority: 300

# Pattern includes 'chromium', 'chromium-browser' and similarly
# named dependencies:
Package: chromium*
Pin: origin "deb.debian.org"
Pin-Priority: 700

sudo apt-get install aptitude
sudo aptitude install chromium