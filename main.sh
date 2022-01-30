sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --kill
cd /home/huawei/hvmi/build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Release ..
make
sudo make install
cd /home/huawei/hvmi/daemon/build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Release ..
make
sudo make install
sudo su -

