sudo zerotier-one -d
sleep 2
sudo rm -rf /tmp/onedrive
sudo mkdir /tmp/onedrive
sudo rclone mount e5: /tmp/onedrive --allow-non-empty --daemon --vfs-cache-mode writes --allow-other --cache-dir /tmp && df -hl
sudo ls /tmp/onedrive/
sudo docker restart xubuntu
sudo docker restart ubuntu
sudo v2hidealist/v2ray/sbin/v2ray -config v2hidealist/v2ray/etc/config.json >/dev/null 2>&1 &
sudo bt restart
#sudo vncserver :1  
sudo nethogs
