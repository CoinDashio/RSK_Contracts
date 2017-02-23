module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
  	RSK: {
  	  host: "139.162.194.77",
      port: 4444,
      network_id: 1,        // Ethereum public network
      from: '0x1efe06005917cd3ec6a018958bd314e1655efefb',
      gasPrice: 1000,
      gas: 3000000
  	}
  }
};
