sudo zerotier-one -d
sudo mkdir /tmp/onedrive
sudo rclone mount e5: /tmp/onedrive --allow-non-empty --daemon --vfs-cache-mode writes --allow-other
sudo docker restart xfce
#sudo bt start
sudo nethogs