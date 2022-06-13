// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GLDToken is ERC20, Ownable {
    constructor() ERC20("Alvara", "ALVA") {
        _mint(msg.sender, 200000000 * (10 ** decimals()) );
    }

    function withdraw() external onlyOwner {
        _transfer(address(this), owner(), balanceOf(address(this)));
    }
}