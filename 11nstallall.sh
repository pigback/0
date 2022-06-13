#这个文件帮助我快速配置 codespace 环境
#00文件为快速启动环境，服务等
#01文件为安装zerotier,并使用环境变量加入我的网络
sudo curl -s https://install.zerotier.com | sudo bash
sudo zerotier-one -d && sudo zerotier-cli join ${{ secrets.ZERO }}
#在这之前我们先更新apt源
sudo sh 10aptupdate.sh
#02文件为我安装btpannel
sudo wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec
sudo bt 14 > 09firststart.md
#03文件为我安装rclone与fuse
sudo curl https://rclone.org/install.sh | sudo bash && apt-get install fuse
#使用rclone挂载我的onedrive
sudo unzip -P ${{ secrets.PASSWD }} rclone.zip -d /root/.config/rclone/
sudo rclone lsf e5:/codespace/macos-docker/ > "rclone5dir.log"
sudo rclone mount e5: /tmp/onedrive --allow-non-empty --daemon --vfs-cache-mode writes --allow-other && df -hl
#04文件为我安装常用docker镜像
#sudo 04allindocker.sh
#05文件为安装v2ray
sudo 05v2rayinstall.sh
#最后运行docker-compose
sudo docker-compose up -d