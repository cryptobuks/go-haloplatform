#!/bin/bash
set -u
set -e

#GLOBAL_ARGS="--rpc --rpcaddr 0.0.0.0 --rpcport 9565 --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,quorum --emitcheckpoints --ws --wsport 9566 --wsaddr 127.0.0.1 --wsorigins 127.0.0.1 --emitcheckpoints --wsapi eth,web3 --rpcvhosts rpctest.haloplatform.tech"

geth --syncmode full --networkid 42568378638 --datadir /go-halo/qdata $* --port 50607 --ipcpath /go-halo/qdata/geth.ipc
