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
