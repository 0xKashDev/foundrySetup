// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import "../src/StakeContract.sol";


contract StakeScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
    }
}
