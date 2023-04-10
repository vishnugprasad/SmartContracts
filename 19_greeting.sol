// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeting{

    string greeting;

    constructor(string memory _greeting){
        greeting = _greeting;
    }

    function greet(string memory _name) external view returns(string memory){
        return string(abi.encodePacked(greeting, "", _name, "!"));
    }
}

/*
The contract has a state variable named "greeting" of type string that will be used to store a greeting message.

 It has a constructor function that takes a string argument "_greeting" and assigns it to the "greeting" variable.

The contract also has a function named "greet" that takes a string argument "_name" and returns a string by concatenating the "greeting" variable,

 an empty space, the "_name" argument, and an exclamation mark. The function is marked as "view" to indicate that it does not modify the contract state 
 
 and can be called without paying gas fees.
 */