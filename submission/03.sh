# Create a SegWit address.
address=$(bitcoin-cli getnewaddress "" bech32)


# Add funds to the address.
bitcoin-cli generatetoaddress 101 $address > /dev/null

# Return only the Address
echo $address

