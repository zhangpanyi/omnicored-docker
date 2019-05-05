# omnicored-docker
OmniCore daemon dockerfile

## 1. Quick Start
```
docker volume create omnicored-data-volume
docker-compose build
docker-compose up -d
```

## 2. JSON-RPC2 API
* [https://www.blockchain.com/es/api/json_rpc_api](https://www.blockchain.com/es/api/json_rpc_api)
* [https://github.com/OmniLayer/omnicore/blob/master/src/omnicore/doc/rpc-api.md](https://github.com/OmniLayer/omnicore/blob/master/src/omnicore/doc/rpc-api.md)

## 3. Testnet Faucet
* [https://testnet-faucet.mempool.co](https://testnet-faucet.mempool.co)
* [https://testnet.help/en/btcfaucet/testnet](https://testnet.help/en/btcfaucet/testnet)
* [https://testnet.manu.backend.hamburg/faucet](https://testnet.manu.backend.hamburg/faucet)

Tether faucet on omni testnet? The steps for testing are roughly like this:
1. Create new addresss via receive tab or with `getnewaddress`
2. Get Bitcoin from a faucet and send them to the address from the first step
3. Send Bitcoin via coin control in the GUI or `sendtoaddress` from the address generated in step one to `moneyqMan7uh8FqdCA2BV5yZ8qVrc9ikLP`
4. Then wait for confirmation and see that the address from the first step received TestOmni, either via the GUI or with the `omni_getbalance` RPC.

## 4. Testnet Block Explorer
* [https://live.blockcypher.com/btc-testnet/](https://live.blockcypher.com/btc-testnet/)

## 5. Reference Resource
* [Propertyid of USDT in omnicore](https://github.com/OmniLayer/omnicore/issues/545)
