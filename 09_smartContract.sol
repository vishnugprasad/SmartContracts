
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


 contract HashExample {

     function getHash(string memory data) public pure returns(bytes32){
         return keccak256(bytes(data));
     }
 }

/*
This Solidity contract defines a HashExample contract that has a single function named getHash. The getHash function takes a string parameter data, which is hashed using the keccak256 function.

The keccak256 function is a cryptographic hash function that takes an input and returns a fixed-size 256-bit (32-byte) hash value. It is commonly used in smart contracts for tasks such as creating unique identifiers or validating digital signatures.

The getHash function is marked as pure, which means that it does not modify the contract state or read any data from the blockchain. It only performs a computation on its input parameters and returns a value based on that computation.

This makes it less expensive in terms of gas fees, since it does not require any blockchain transactions to execute. */
