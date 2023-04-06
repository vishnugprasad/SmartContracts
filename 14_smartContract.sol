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


/*
It defines a simple mapping called myMapping that maps string keys to uint values. 

The setValue function allows an external account to set the value associated with a specific key,

 while the getValue function allows an external account to retrieve the value associated with a specific key.

The public modifier on the myMapping variable allows external accounts to read the contents of the mapping directly,

 without needing to call the getValue function.
*/