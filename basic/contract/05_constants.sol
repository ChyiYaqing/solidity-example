// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Constants {
    // coding convention to uppercase constant variables
    // constants are variables that cannot be modified.
    // Their value is hard coded and using constants can save gas cost.
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint256 public constant MY_UINT = 123;
}