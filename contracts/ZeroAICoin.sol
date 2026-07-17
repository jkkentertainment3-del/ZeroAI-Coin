// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ZeroAICoin is ERC20, Ownable {

    constructor(address initialOwner)
        ERC20("Zero AI Coin", "ZAI")
        Ownable(initialOwner)
    {
        _mint(initialOwner, 100000000 * 10 ** decimals());
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
