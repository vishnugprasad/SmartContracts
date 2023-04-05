// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaymentContract {
    address payable public recipient;

    constructor(address payable _recipient){
        recipient = _recipient;
    }

    function makePayment() external payable {
        require(msg.value > 0, "payment must be greater than 0");
        recipient.transfer(msg.value);
    }
}


/*

In this example, we have a PaymentContract that accepts payments from users and sends them to a designated recipient.

The recipient address is set in the constructor and can be changed later if needed.

The makePayment function is marked as external so that it can be called by anyone, 

and it is marked as payable so that it can receive ether. The require statement ensures that the payment amount is greater than 0, 

and if it is, the payment is transferred to the recipient using the transfer function, which takes the msg.value as an argument.

*/