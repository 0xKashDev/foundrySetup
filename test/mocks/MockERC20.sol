// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract MockERC20 is ERC20, Ownable {
    constructor() ERC20 ("MOCK ERC20", "MERC") {
        _mint(msg.sender, 1000000e18);
        
    }

   
}