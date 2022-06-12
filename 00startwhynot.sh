sudo zerotier-one -d
#sudo mkdir /tmp/onedrive 'useless'
sudo rclone mount e5: /tmp/onedrive --allow-non-empty --daemon --vfs-cache-mode writes --allow-other && df -hl
sudo ls /tmp/onedrive/
sudo docker restart xfce
#sudo bt restart
#sudo vncserver :1
sudo nethogs