// SPDX-License-Identifier: GPL-3.0


pragma solidity >=0.7.0 <0.9.0;


contract example {


    uint public counter;


    constructor(uint initial){
        counter = initial;
    }


    function increment() public {
        counter++;
    }


    function decrement() public {
        counter--;
    }


}

// The contract has a public uint variable called "counter," which is initialized to a value passed to the constructor when the contract is created.

// The constructor function is defined with the same name as the contract and is called only once during the deployment of the contract. It takes an initial value for the counter and sets the counter to this value.

// The "increment" and "decrement" functions are both public, meaning they can be called from outside the contract. The "increment" function increments the value of the counter by one, while the "decrement" function decrements the value of the counter by one.

// Overall, this is a very basic Solidity smart contract that demonstrates the use of a constructor and functions to modify the state of a variable.

