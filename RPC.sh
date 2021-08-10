#!/bin/bash

DIR=~/.chia

type=$1
command=$2
if [ $# -eq 2 ];then
  data="{}"
elif [ $# -lt 2 ];then
  echo "Argument Error. example"
  echo "./RPC.sh full_node get_wallet_balance"
  echo "./RPC.sh wallet get_wallet_balance '{"wallet_id": 1}' "
  echo "./RPC.sh wallet get_next_address '{"wallet_id": 1, "new_address":true}'"
  type="go_else"
else
  data="${@:3}"
fi

if [ ${type} = "full_node" ]; then
  PORT=8555
elif [ ${type} = "farmer" ]; then
  PORT=8559
elif [ ${type} = "harvester" ]; then
  PORT=8560
elif [ ${type} = "wallet" ]; then
  PORT=9256
else
  echo "https://github.com/Chia-Network/chia-blockchain/wiki/RPC-Interfaces"
  echo "https://github.com/Chia-Network/chia-blockchain/wiki/RPCExamples"
  echo "https://github.com/rk01234/chia_rpc_shell_script"
  echo "full_node"
  echo "farmer"
  echo "harvester"
  echo "wallet"
  exit 1
fi

curl -sS --insecure --cert ${DIR}/mainnet/config/ssl/${type}/private_${type}.crt \
 --key ${DIR}/mainnet/config/ssl/${type}/private_${type}.key \
 -d "${data}" -H "Content-Type: application/json" \
 -X POST https://localhost:${PORT}/${command} | python -m json.tool
