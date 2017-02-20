pragma solidity ^0.4.4;

import "../contracts/zeppelin/token/StandardToken.sol";
import "./ConvertLib.sol";

/*
 * CoinDashCrowdSale
 *
 * Simple ERC20 Token example, with crowdsale token creation
 */
contract CoinDashCrowdSale is StandardToken {

  string public name = "CoinDashToken";
  string public symbol = "CDT";
  uint public decimals = 18;

  // 1 ether = 500 example tokens 
  uint PRICE = 500;

  function () payable {
    createTokens(msg.sender);
  }
  
  function createTokens(address recipient) payable {
    if (msg.value == 0) throw;

    uint tokens = safeMul(msg.value, getPrice());

    totalSupply = safeAdd(totalSupply, tokens);
    balances[recipient] = safeAdd(balances[recipient], tokens);
  }
  
  // replace this with any other price function
  function getPrice() constant returns (uint result){
    return PRICE;
  }
}


// CoinDashCrowdSale.deployed().then(function(instance) {return instance.balanceOf('0xcfbe06187478a09fb0d4d69c5a0fa1d29901790b'); }).then(function(result) { console.log(result); });

// CoinDashCrowdSale.deployed().then(function(instance) {return instance.createTokens('0x1c7c8b877212368a343e4f15f24b03ced78d4d2b', {value: web3.toWei(1, 'ether')}); }).then(function(result) { console.log(result); });

