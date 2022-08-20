cd /home/huawei/code/hvmi/introcore/src/guests/linux/detours
make
sudo LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/hvmid --kill
cd /home/huawei/code/hvmi/build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Release ..
make
sudo make install
cd /home/huawei/code/hvmi/daemon/build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_BUILD_TYPE=Release ..
make
sudo make install
sudo su -
# Release
# Debug