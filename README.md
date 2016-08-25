npd6
====

Neighbor Proxy Daemon IPv6


https://github.com/maxchendt/npd6/releases/download/1.1.2/npd6_1.1.2_amd64.deb

To build deb package

    wget https://github.com/maxchendt/npd6/archive/1.1.2.tar.gz
    tar -xvpzf 1.1.2.tar.gz 
    cd npd6-1.1.2/
    sudo apt-get install --no-install-recommends  debhelper build-essential
    dpkg-buildpackage -b -us -uc -i
    cd ..
    sudo dpkg -i npd6_1.1.2_amd64.deb 


