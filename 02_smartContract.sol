

    // SPDX-License-Identifier: GPL-3.0


    pragma solidity >=0.7.0 <0.9.0;


    contract example {


    uint256 public counter;


    constructor(){
        counter = 0;
    }


    function increment() public {
        counter++;
    }


    function decrement() public {
        counter--;
    }


    }


    
//  The contract has a public uint256 variable called "counter," which is initialized to 0 in the constructor function.

// The constructor function does not take any arguments and simply sets the value of the counter to 0.

// The "increment" and "decrement" functions are both public and modify the value of the counter by adding or subtracting 1, respectively.

// Overall, this is a very basic Solidity smart contract that demonstrates the use of a constructor and functions to modify the state of a variable. 

// The main difference between this contract and the previous one is the use of uint256 instead of uint for the counter variable. uint256 is a 256-bit unsigned integer type,

//  while uint is a 256-bit unsigned integer type with a minimum value of 0. In general, it is a good practice to use uint256 instead of uint to avoid potential integer overflow issues.






