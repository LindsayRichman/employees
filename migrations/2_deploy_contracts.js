var Adoption = artifacts.require("Adoption");

module.exports = function(deployer) {
  deployer.deploy(Adoption);
};

var Termination = artifacts.require("Termination");

module.exports = function(deployer) {
  deployer.deploy(Termination);
};
