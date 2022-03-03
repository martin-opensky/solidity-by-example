// SPDX-License-Identifier: MIT
/* Global variables 
    https://www.youtube.com/watch?v=ryA86ZiSD-w
    https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables
*/
pragma solidity ^0.8.3;

contract Variables {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;
    uint public blockNumber;

    function doSomething() public returns (uint i, uint timestamp, address sender) {
        // Local variables are not saved to the blockchain.
        i = 456;

        // Here are some global variables
        timestamp = block.timestamp; // Current block timestamp
        sender = msg.sender; // address of the caller

        blockNumber = block.number;

    }
}