// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// Enum representing shipping status.
enum Status {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Canceled
}