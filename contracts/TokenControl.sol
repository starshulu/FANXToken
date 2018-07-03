pragma solidity ^0.4.23;


import "./FanxToken.sol";

contract TokenControl {

    FANXToken   tokenContract;

    constructor(address _tokenAddr) public {
        tokenContract = FANXToken(_tokenAddr);
    }
    
    function balanceOf(address addr) public view  returns (uint256) {
       return tokenContract.balanceOf(addr) ;
    }

    function transfer(address _to, uint256 _value) public returns (bool) {
       return tokenContract.transferFrom(msg.sender,_to,_value);
    }

    function batchTransfer( address[] _tos, uint256[] _values ) public returns (bool) {
        for(uint i = 0; i < _tos.length; i++) {
           address dest = _tos[i];
           uint256 val = _values[i];
           tokenContract.transferFrom(msg.sender,dest,val);
        }
        return true;
    }
}
