var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
var ProofOfExistence1 = artifacts.require("./ProofOfExistence1.sol");
var CoinDashCrowdSale = artifacts.require("./CoinDashCrowdSale.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  deployer.deploy(MetaCoin);
  deployer.link(ConvertLib, CoinDashCrowdSale);
  deployer.deploy(CoinDashCrowdSale);
};
