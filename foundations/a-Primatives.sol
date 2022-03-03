// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Primitives {
    bool public boo = true;

    /*
    uint stands for unsigned integer, meaning non negative integers
    different sizes are available
        uint8   ranges from 0 to 2 ** 8 - 1
        uint16  ranges from 0 to 2 ** 16 - 1
        ...
        uint256 ranges from 0 to 2 ** 256 - 1
    */
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123; // uint is an alias for uint256
    uint8 public newU = 0;

    /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int is same as int256
    int public neg = -11;

    // Min and Max of certain int types
    int public min = type(int).min;
    int public max = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    address public newAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}

// Value Types | Solidity 0.8 https://www.youtube.com/watch?v=8Tj-Th_S7NU