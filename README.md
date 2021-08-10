# chia_rpc_shell_script  
An easy way to connect to rcp from bash.  
  
# Recommended usage  
wget https://raw.githubusercontent.com/rk01234/chia_rpc_shell_script/main/RPC.sh  
chmod +x RPC.sh  
  
# How to use,for example  
./RPC.sh wallet get_next_address  '{"wallet_id": 1, "new_address":true}'  
{  
    "address": "xch1d4egkfrzhkauh3gqgaq6k4ssr9ma7ncr04fs6wtzrk3ylceen5psawvwqu",  
    "success": true,  
    "wallet_id": 1  
}  
./RPC.sh wallet get_wallet_balance '{"wallet_id": 1}'  
{  
    "success": true,  
    "wallet_balance": {...}  
}  
./RPC.sh full_node get_blockchain_state  

<!-- If you make a donation to this address, the creator may be happy to release other useful things you've made! -->  
<!-- xch1d4egkfrzhkauh3gqgaq6k4ssr9ma7ncr04fs6wtzrk3ylceen5psawvwqu -->  
