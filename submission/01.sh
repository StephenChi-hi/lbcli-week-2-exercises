# Create a wallet with the name "btrustwallet".
bitcoind -regtest -daemon
sleep 3
bitcoin-cli createwallet btrustwallet | jq -r .name