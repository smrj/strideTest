// test/rsk_deposit_contract_test.js
const RSKDepositContract = artifacts.require("RSKDepositContract");
const mortalContract = artifacts.require("mortal");

contract("RSKDepositContract", accounts => {
  const [firstAccount] = accounts;

  it("sets an owner", async () => {
    const testRSKDC = await mortalContract.new();
    assert.equal(await testRSKDC.m_owner.call(), firstAccount);
  });
});
