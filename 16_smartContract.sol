// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyBalance {

    mapping(address=>uint) public balances;

    function updateBalance(uint newbalance) public {
        balances[msg.sender] = newbalance;
    }

    function getBalance(address account) public view returns(uint) {
        return balances[account];
    }
}


/*
The updateBalance function is the same as in the previous example, it allows users to update their balance in the mapping.

The getBalance function takes an address as an argument and returns the balance associated with that address in the mapping.

 This function is read-only, which means it does not modify the state of the contract and can be called by anyone.
*/