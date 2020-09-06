// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/token/ERC20/ERC20Capped.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/contracts/access/Ownable.sol";

contract AlzToken is ERC20Capped, Ownable {
    uint256 private constant initialSupply = 1000000000000000000000000000;  
    
    constructor() public ERC20("Alizee", "ALZ") ERC20Capped(initialSupply) {
        _mint(msg.sender, initialSupply);
    }
}
