# chia_rpc_shell_script  
An easy way to connect to rcp from bash.  
  
 
# CAUTION  
  This program uses the RPC port  
  Please check the security of your computer carefully.  
  The script I have written is short and easy to understand, so please make sure there is no suspicious code inserted before you use it.  
  Have a good farm life!  
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

<!-- If I get a tip, I may release other stuff. -->  
<!-- xch1d4egkfrzhkauh3gqgaq6k4ssr9ma7ncr04fs6wtzrk3ylceen5psawvwqu -->  
