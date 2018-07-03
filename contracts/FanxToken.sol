pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract FANXToken is StandardToken {
    
    string public name = "FANX Token";
    string public symbol = "FANX";
    uint8  public decimals = 18;
    uint256 public INITIAL_SUPPLY = 1000000000 * 10 ** uint256(decimals);

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}