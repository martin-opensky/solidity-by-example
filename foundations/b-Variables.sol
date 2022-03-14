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

/*
    Constants are variables that cannot be modified.
    Their value is hard coded and using constants can save gas cost.
*/
contract Constants {
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}

/*
    Immutable variables are like constants. 
    Values of immutable variables can be set inside the constructor but cannot be modified afterwards.
*/
contract Immutable {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}