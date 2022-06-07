sudo apt-get install language-pack-zh-han*
sudo apt-get install ttf-mscorefonts-installer
sudo apt-get install fontconfig
LANG="zh_CN.UTF-8"
locale
echo $LANG
fc-list :lang=zh
cp HarmonyOS.ttf /usr/share/fonts/
sudo chmod 644 /usr/share/fonts/HarmonyOS.ttf
sudo mkfontscale
sudo mkfontdir
sudo fc-cache -fv