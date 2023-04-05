// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract MyContract {
    address payable public recipient;
    uint public balance;

    function deposite() public payable {
        balance += msg.value;
    }

    function withdraw() public {
        require(balance >0, "balance must be greater than zero");
        uint amount = balance;
        balance = 0;
        recipient.transfer(amount);
    }
}


/*
In this example, the MyContract contract includes two functions and two state variables. The recipient variable is of type address payable, which means it can receive Ether. The balance variable is of type uint, 

and it keeps track of the current balance of the contract.

The deposit function allows external accounts to deposit Ether into the contract and update the balance variable. 

The payable keyword is used to indicate that the function can receive Ether.

The withdraw function allows external accounts to withdraw all of the Ether in the 

contract and transfer it to the recipient address. The function checks that the balance variable is greater than 0 before proceeding using the require statement. 

Then, it sets the amount variable to the current balance value, sets the balance variable to 0, and uses the .transfer() function to send the amount of Ether to the recipient address.

*/


