sudo zerotier-one -d
#sudo mkdir /tmp/onedrive
sudo rclone mount e5: /tmp/onedrive --allow-non-empty --daemon --vfs-cache-mode writes --allow-other && df -hl
sudo ls /tmp/onedrive/
sudo docker restart xubuntu
sudo docker restart ubuntu
sudo bt restart
#sudo vncserver :1  
sudo nethogs