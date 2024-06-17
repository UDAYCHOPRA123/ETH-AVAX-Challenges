//SPDX-License-Identifier:MIT
pragma solidity 0.8.25;
contract access {
    string name;
    uint id;
    address admin;

    constructor(){
        admin=msg.sender;
    }
 modifier accessgranted{
    require(admin == msg.sender);
    _;
 }
 function setname(string memory _name) public accessgranted{
    name=_name;
 } 
 function getname() public view accessgranted returns (string memory){
    return name;
 }
 function setid(uint _id) public accessgranted{
    id=_id;
 } 
 function getid() public view accessgranted returns (uint){
    return id;
 }

} 
