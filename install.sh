#!/bin/sh
install_3proxy() {
    echo "installing 3proxy"
    URL="https://raw.githubusercontent.com/quangnguyen7616/proxyv6/main/3proxy-0.9.4.tar.gz"
    wget -qO- $URL | bsdtar -xvf-
    cd 3proxy-0.9.4
    make -f Makefile.Linux
    mkdir -p /usr/local/etc/3proxy/{bin,logs,stat}
    cp src/3proxy /usr/local/etc/3proxy/bin/
    cp ./scripts/rc.d/proxy.sh /etc/init.d/3proxy
    chmod +x /etc/init.d/3proxy
    chkconfig 3proxy on
    cd $WORKDIR
}
echo "installing apps"
yum -y install wget gcc net-tools bsdtar zip >/dev/null
install_3proxy
