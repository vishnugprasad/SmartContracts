// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Coinflip {
    enum Side {Heads, Tails}
    Side public result;

    event CoinFlipped(Side result);

    function flipCoin() public returns (Side) {
        uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty)))%2;
        result = Side(randomNumber);
        emit CoinFlipped(result);
        return result;
    }
}


/*
This contract defines an enumeration type called Side with two possible values: HEADS and TAILS.

It also has a public state variable called result of type Side, which will store the outcome of the coin flip.

The contract has a public function called flipCoin that simulates flipping a coin by generating a random number 

using the current block's timestamp and difficulty as inputs to a hash function. The modulo operator is used to 

ensure that the result is either 0 or 1, which corresponds to heads or tails, respectively. The result variable is updated with 

the outcome of the  coin flip, and an event is emitted to signal that the coin has been flipped.

This  contract could be used by other smart contracts or DApps that require a random coin flip, such as a gambling application or a game.
 */ 