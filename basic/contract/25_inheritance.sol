// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**

Solidity supports multiple inheritance. Contracts can inherit other contract by using the is keyword.

Function that is going to be overriden by child contract must be declared as virtual.
function that is going to override a parent function must use the keyword override.

 */

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contract inherit other contracts by using the keyword 'is'
contract B is A {
    // Override A.foo() 
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    // Override A.foo()
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple time in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.
contract D is B, C {
    // D.foo() returns "C"
    // Since C is the right most parent contract with function foo()
    function foo() public pure override(B,C) returns (string memory) {
        return super.foo();
    }
}