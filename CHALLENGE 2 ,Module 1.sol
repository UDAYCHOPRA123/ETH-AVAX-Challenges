// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;
contract smartcontract{
    uint public x=10;
    address payable public owner;
    constructor() {
        owner = payable(msg.sender);}
        modifier withdraw {
            require (msg.sender==owner);
            _;
        }

    function viewadd(uint y) public view returns(uint){
        return x+y;
    }
    function pureadd(uint i) public pure returns(uint){
        return i+i;

    }
    function payabledeposit() public payable {}
    function withdraws ()public withdraw{
        owner.transfer(address(this).balance);
    }
    
}

contract newcontract is smartcontract{
    function getbalance() public view returns (uint){
        return address(this).balance; 
        
    } 
    
}
