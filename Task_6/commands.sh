mv Task_6.tar.bz2 /home/mimi/Linux-25-Tasks
tar -xvf Task_6.tar.bz2
sudo useradd -m alice
sudo useradd -m bob
sudo groupadd project_group
sudo usermod -aG project_group alice
sudo usermod -aG project_group bob
zip -r files.zip files
sudo chown alice files.zip
sudo chgrp project_group files.zip
sudo chown 640 files.zip
