// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";

contract StakeContractTest is Test {
    StakeContract public stakeContract;
    MockERC20 public mockToken;
    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new MockERC20();

    }

    function test_staking_fuzz() public {
        uint256 amount = 10e18;
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
    }

    function test_staking2_fuzz(uint8 amount) public {
        // if you use uint256 test will fail because token allocation is not large enough
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);

    }
}
