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