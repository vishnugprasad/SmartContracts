// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SampleContract {

    string public myString;
    bytes public myBytes;

    function setMyString(string memory _str) public {
        myString = _str;
    }

    function setMyBytes(bytes memory _bytes) public {
        myBytes = _bytes;
    }
    
    function getMyBytesLength() public view returns (uint) {
        return myBytes.length;
    }


    
}

/*

In this contract, we have two state variables - myString and myBytes. The setMyString function allows us to set the value of myString by passing in a string as an argument. Similarly, the setMyBytes function allows us to set the value of myBytes by passing in a bytes array as an argument.

The getMyBytesLength function is a simple getter function that returns the length of the myBytes array.
*/

