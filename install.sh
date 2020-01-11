#/bin/bash

wget https://github.com/Kitware/CMake/releases/download/v3.15.2/cmake-3.15.2.tar.gz
tar -xvf cmake-3.15.2.tar.gz
cd cmake-3.15.2
./bootstrap
make && sudo make install
cd
sudo apt install build-essential cmake pkg-config libssl-dev libunwind-dev libevent-dev libsodium-dev binutils-dev libboost-all-dev autoconf
git clone https://github.com/blur-network/dpow-blur.git
cd dpow-blur && make release-static
cd build/release/bin
