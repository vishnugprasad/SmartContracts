// SPDX-License-Identifier: GPL-3.0
    pragma solidity >=0.7.0 <0.9.0;


    contract BooleanOperations{
        bool private myBool;

        constructor( bool initialBool){
            myBool = initialBool;
        }

        function toogleBool() public {
            myBool = !myBool;
        }
        
        function getBool() public view returns (bool){
            return myBool;
        }


    }


    // In this contract, we define a private boolean variable called myBool. 
    
    // The constructor takes a boolean parameter called initialBool and sets the value of myBool to that value.

    // We then define a public function called toggleBool that flips the value of myBool.
    
    // Finally, we define another public function called getBool that returns the current value of myBool.