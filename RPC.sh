#!/bin/bash
# config/ssl folder
dir=~/.chia/mainnet/config/ssl

# from config/config.yaml
full_node_port=8555
farmer_port=8559
harvester_port=8560
wallet_port=9256

while [ "$#" -ge "1" ]; do
  if [ "$1" = "-h" ]; then
    type="help"
    break
  elif [ "$1" = "-t" ] || [ "$1" = "--type" ];then
    shift
    type="$1"
  elif [ "$1" = "-a" ] || [ "$1" = "--action" ];then
    shift
    action="$1"
  elif [ "$1" = "-d" ] || [ "$1" = "--data" ];then
    shift
    data="$1"
  fi
  shift
done

if [ -z "$action" ] || [ -z "$type" ]; then
  type="help"
fi

if [ ${type} = "full_node" ]; then
  port=${full_node_port}
elif [ ${type} = "farmer" ]; then
  port=${farmer_port}
elif [ ${type} = "harvester" ]; then
  port=${harvester_port}
elif [ ${type} = "wallet" ]; then
  port=${wallet_port}
else
    echo "https://github.com/Chia-Network/chia-blockchain/wiki/RPC-Interfaces"
    echo "https://github.com/Chia-Network/chia-blockchain/wiki/RPCExamples"
    echo "https://github.com/rk01234/chia_rpc_shell_script"
    echo "-t --type   : [full_node,farmer,harverter,wallet]"
    echo "-a --action : example get_wallet_balance"
    echo "-d --data   : '{"wallet_id": 1, "new_address":true}'"
    echo "               or not need."
    echo "*====== example =====*"
    echo "./rpc.sh -t full_node -a get_wallet_balance"
    echo "./rpc.sh --type full_node --action get_wallet_balance"
    echo ""
    echo "./rpc.sh -t wallet -a get_wallet_balance -d '{"wallet_id": 1}' "
    echo "./rpc.sh --type wallet --action get_wallet_balance --data '{"wallet_id": 1}' "
    echo ""
    echo "./rpc.sh -t wallet -a get_next_address -d '{"wallet_id": 1, "new_address":true}'"
    exit 0
fi

curl -sS --insecure --cert ${DIR}/${type}/private_${type}.crt \
 --key ${DIR}/${type}/private_${type}.key \
 -d "${data}" -H "Content-Type: application/json" \
 -X POST https://127.0.0.1:${port}/${command} | python -m json.tool
