// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function isOwner() public view returns(bool){
        return(msg.sender == owner);
    }
}

/*
In this example, the MyContract contract includes a single state variable: owner of type address. 

The constructor function is used to initialize the owner variable with the address of the account that deployed the contract,

 which is accessed using the msg.sender global variable.

The isOwner function allows external accounts to check if they are the owner of the contract by calling

 the function and checking if the msg.sender is equal to the owner variable. The view keyword is used to indicate that 
 
  the function does not modify the contract state. */
  