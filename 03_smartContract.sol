    // SPDX-License-Identifier: GPL-3.0
    pragma solidity >=0.7.0 <0.9.0;




    contract CheckBalance {
        uint public balance = 100;


        function deposite() public payable {
            balance += msg.value;
        }


        function withdraw(uint amount) public {
            require(amount <= balance, "Insufficent fund");
            balance -= amount;
            payable(msg.sender).transfer(amount);
        }


        function getBalance() public view returns (uint){
            return balance;
        }
    }


// This is a Solidity smart contract called "CheckBalance" that allows users to deposit and withdraw funds and check their balance.

// The SPDX-License-Identifier comment at the beginning of the file specifies the license under which the code is released. In this case, it is released under the GNU General Public License version 3.0.

// The pragma directive specifies the version of Solidity that the code is written in. This contract is written in Solidity version 0.7.0 or higher but less than 0.9.0.

// The contract has a public uint variable called "balance," which is initialized to 100.

// The "deposite" function is public and payable, meaning it can be called from outside the contract and can accept ether (the native cryptocurrency of the Ethereum blockchain) as payment. It adds the value of the msg.value (the amount of ether sent with the transaction) to the balance variable.

// The "withdraw" function is public and takes an input parameter "amount" specifying the amount of ether to withdraw. It uses a "require" statement to check if the amount to be withdrawn is less than or equal to the current balance. If the balance is sufficient, it subtracts the amount from the balance 

// and sends it to the address that called the function using the "payable" function.

// The "getBalance" function is public and view, meaning it can be called from outside the contract and does not modify the state of the contract. It simply returns the current balance.