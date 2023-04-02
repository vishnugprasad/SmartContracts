// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract MyString {

    string private myString;

    function setMyString( string memory _myString) public {
        myString = _myString;
    }

    function getMyString() public view returns (string memory){
        return myString;
    }
}


// In this contract, there is a private string variable myString which can be set and retrieved through the setString and getString functions, respectively.

// The setString function takes a string parameter _newString and updates the value of myString to this new value.

// The getString function is a read-only function that returns the value of myString.

// Note that we use the memory keyword when passing a string as a parameter in a function because strings are dynamically sized and Solidity needs to know where to store them.