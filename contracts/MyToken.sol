pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import 'zeppelin-solidity/contracts/token/StandardToken.sol';

contract MyToken is StandardToken, Ownable {
  string public constant name = 'Token Bank Asset';
  string public constant symbol = 'TBA';
  uint8 public constant decimals = 18;
  uint256 public constant INITIAL_SUPPLY = 10000000000;

  function MyToken() public {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
