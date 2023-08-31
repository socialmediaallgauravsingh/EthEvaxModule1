// SPDX-License-Identifier: MIT



pragma solidity ^0.8.0;

contract AgeVerifier {
    address public owner;
    mapping(address => uint256) public ages;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function setAge(address _user, uint256 _age) public onlyOwner {
        
        require(_age >= 18, "Age must be 18 or older");

        ages[_user] = _age;
    }

    function getAge(address _user) public view returns (uint256) {
        return ages[_user];
    }

    function assertExample(uint256 _value) public pure {
        
        assert(_value > 0);
    }

    function revertExample(bool _condition) public pure {
        
        require(_condition, "Condition not met");
        revert("Transaction reverted");
    }
}
