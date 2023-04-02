

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BooleanUintContract {
    bool public myBool;
    uint public myUint;

    constructor(bool initialBool, uint initialUint) {
        myBool = initialBool;
        myUint = initialUint;
    }

    function setBool(bool _newBool) public {
        myBool = _newBool;
    }

    function setUint(uint _newUint) public {
        myUint = _newUint;
    }

    function getBool() public view returns (bool) {
        return myBool;
    }

    function getUint() public view returns (uint) {
        return myUint;
    }
}


// The constructor of the contract takes two parameters, an initial boolean value and an initial unsigned integer value, which are used to initialize the "myBool" and "myUint" variables respectively.

// The contract also provides two functions to modify the state variables: "setBool" and "setUint", which take a boolean value and an unsigned integer value as parameters, and modify the "myBool" and "myUint" variables respectively.

// The contract also provides two read-only functions to retrieve the current values of the state variables: "getBool" and "getUint", which return the current values of "myBool" and "myUint" respectively.