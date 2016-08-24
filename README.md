npd6
====

Neighbor Proxy Daemon IPv6


building deb package

    wget https://github.com/maxchendt/npd6/archive/1.1.1.tar.gz
    tar -xvpzf 1.1.1.tar.gz 
    cd npd6-1.1.1/
    sudo apt-get install --no-install-recommends  debhelper build-essential
    dpkg-buildpackage -b -us -uc -i
    cd ..
    sudo dpkg -i npd6_1.1.1_amd64.deb 

Or download from https://github.com/maxchendt/npd6/releases/download/1.1.1/npd6\_1.1.1_amd64.deb
