pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CosToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CosToken(address _owner)  UpgradeableToken(_owner) {
    name = "CosToken";
    symbol = "COS";
    totalSupply = 10000;
    decimals = 2;

    balances[_owner] = totalSupply;
  }
}