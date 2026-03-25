# Create a wallet with the name "btrustwallet".
if ! bitcoin-cli -regtest getblockchaininfo > /dev/null 2>&1; then
  bitcoind -regtest -daemon
  # Wait for bitcoind to be ready (max 30s)
  for i in {1..30}; do
    if bitcoin-cli -regtest getblockchaininfo > /dev/null 2>&1; then
      break
    fi
    sleep 1
  done
fi

# Create the wallet and output the name
bitcoin-cli -regtest createwallet btrustwallet | jq -r .name