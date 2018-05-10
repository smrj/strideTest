// contracts/rsk_deposit_contract.sol
pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "../contracts/rsk_deposit_contract.sol";

contract rsk_deposit_contract_test {

function testSettingAnOwnerDuringCreation() public {
    RSKDepositContract rdc = new RSKDepositContract();
    mortal mort = new mortal();
    Assert.equal(mort.m_owner(), this, "An owner is different than a deployer");
  }

}
