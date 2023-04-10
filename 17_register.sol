// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Register {
    struct User {
        string name;
        uint age;
    }

    mapping(address => User) public users;

    function register(string memory _name, uint _age) public{
        users[msg.sender] = User(_name, _age);
    }
}





/*

In this contract, we define a User struct that holds a user's name and age. 

We then define a mapping called users that maps an Ethereum address to a User struct. 

This allows us to keep track of users and their information on the blockchain.

We then define a register function that takes in a name and age parameter,

 and stores that information for the user associated with the Ethereum address that called the function (msg.sender). 
 
 The public keyword means that anyone can call this function
 */