// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract MyNFT {
    constructor() {
        // From buildspace: It is tricky to debug smart contracts
        // but Hardhat provides the ability to console log
        console.log("Testing smart contract. It works!");
    }
}
