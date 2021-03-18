df -h  #View the storage available on your instance
sudo mkfs -t ext3 /dev/sdf #Create an ext3 file system on the new volume
sudo mkdir /mnt/data-store #Create a directory for mounting the new storage volume
sudo mount /dev/sdf /mnt/data-store #Mount the new volume
echo "/dev/sdf   /mnt/data-store ext3 defaults,noatime 1 2" | sudo tee -a /etc/fstab
#To configure the Linux instance to mount this volume whenever the instance is started, you will need to add a line to /etc/fstab.
cat /etc/fstab #View the configuration file to see the setting on the last line
df -h
sudo sh -c "echo some text has been written > /mnt/data-store/file.txt"
cat /mnt/data-store/file.txt
