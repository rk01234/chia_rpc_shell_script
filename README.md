# chia_rpc_shell_script  
An easy way to connect to rcp from bash.  
  
 
# CAUTION  
  This program uses the RPC port  
  Please check the security of your computer carefully.  
  Have a good farm life!  
# Recommended usage  
wget https://raw.githubusercontent.com/rk01234/chia_rpc_shell_script/main/rpc.sh  
chmod +x rpc.sh  
  
# How to use,for example  
./rpc.sh -t wallet -a get_next_address -d '{"wallet_id": 1, "new_address":true}'  
{  
    "address": "xch1d4egkfrzhkauh3gqgaq6k4ssr9ma7ncr04fs6wtzrk3ylceen5psawvwqu",  
    "success": true,  
    "wallet_id": 1  
}  
./rpc.sh -t wallet -a get_wallet_balance -d '{"wallet_id": 1}'  
{  
    "success": true,  
    "wallet_balance": {...}  
}  
./rpc.sh -t full_node -a get_blockchain_state  

<!-- If I get a tip, I may release other stuff. -->  
<!-- xch1d4egkfrzhkauh3gqgaq6k4ssr9ma7ncr04fs6wtzrk3ylceen5psawvwqu -->  
