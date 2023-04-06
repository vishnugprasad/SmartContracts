// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mymapping {
    mapping(string => uint) public myMapping;

    function getValue(string memory key, uint value) public {
        myMapping[key] = value;
    }

    function setValue(string memory key) public view returns(uint) {
        return myMapping[key];
    }
}
