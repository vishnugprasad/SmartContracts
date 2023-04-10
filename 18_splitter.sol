// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Splitter{

    address payable public recipient1;
    address payable public recipient2;

    constructor(address payable _recipient1, address payable _recipient2){
        recipient1 = _recipient1;
        recipient2 = _recipient2;
    }

    function split() external payable {
        require(msg.value % 2 == 0, "the amount should be even");
        uint256 amount = msg.value/2;
        recipient1.transfer(amount);
        recipient2.transfer(amount);
    }
}


/*
 this takes two payable addresses as constructor arguments and stores them as public variables recipient1 and recipient2.

The split() function checks that the amount of ether sent to the contract is even, and reverts the transaction if it's not.

 This ensures that the total amount of ether can be split evenly between the two recipients.

Then, the function calculates the amount of ether to send to each recipient by dividing the total amount by 2, 

and sends that amount to each recipient using the transfer() function.

This version does not handle odd amounts, but it ensures that both recipients receive the same amount of ether, 

which may be preferable in certain situations.

 */