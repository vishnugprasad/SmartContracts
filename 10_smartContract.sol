// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mycontract {
    function appendNumbers(uint a, uint b) public pure returns(bytes32){
        bytes32 result = keccak256(abi.encodePacked(a,b));
        return result;
    }
}


/*

In this example, the addNumbers function takes two uint arguments a and b and returns a bytes32 

value that is the hash of the concatenation of a and b using abi.encodePacked.

The abi.encodePacked function concatenates its arguments without padding or delimiter.

 In this case, it concatenates a and b into a single byte array, which is then hashed using keccak256.

 */