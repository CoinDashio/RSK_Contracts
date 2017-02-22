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
      from: '0xe567ad3ea4c75a647cc1bd1f0d771f4f3e19c60c',
      gasPrice: 1000,
      gas: 3000000
  	}
  }
};
