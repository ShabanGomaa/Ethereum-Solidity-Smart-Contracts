const Migrations = artifacts.require("EmployeeContract");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
