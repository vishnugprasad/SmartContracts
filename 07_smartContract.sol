


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ByteExample {

    bytes public myBytes;

    function setBytes(bytes memory newBytes) public {
        myBytes = newBytes;
    }

    function getLength() public view returns (uint) {
        return myBytes.length;
    }
    
}



/*
In this example, we define a contract called BytesExample that contains a public byte array variable called myBytes. We also define three functions: setBytes, getByte, and getLength.

The setBytes function takes a byte array called newBytes as input and sets the value of myBytes to this input. This function can be called by anyone on the network, and it modifies the state of the contract by setting the value of myBytes.

The getByte function takes an index value as input and returns the byte value at that index in the myBytes array. This function can be called by anyone on the network, and it does not modify the state of the contract.

The getLength function returns the length of the myBytes array. This function can be called by anyone on the network, and it does not modify the state of the contract.
*/