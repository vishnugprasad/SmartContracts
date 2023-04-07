// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyBalance {

    mapping(address=>uint) public balances;

    function getBalance(uint newBalance) public {
        balances[msg.sender] = newBalance;
    }
}



/* 
In this example, we define a mapping called balances which maps addresses to uints. 

We also define a function called updateBalance which takes a new balance as an argument and updates 

the balance of the caller's address in the mapping.

This contract allows users to update their balance in the mapping, which could be useful for keeping track

 of account balances in a decentralized application.
*/