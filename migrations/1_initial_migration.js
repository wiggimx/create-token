let WiggiCoin = artifacts.require("../contracts/WiggiCoin.sol");
module.exports = function(_deployer) {
  // Use deployer to state migration tasks.
  _deployer.deploy(WiggiCoin);
};
