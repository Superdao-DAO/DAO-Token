// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.6.0;

import './openzeppelin_v3_1_0/token/ERC20/ERC20.sol';
import './openzeppelin_v3_1_0/access/Ownable.sol';

contract SDAOToken is Ownable, ERC20 {
    string constant NAME    = 'SuperDAO';
    string constant SYMBOL  = 'SDAO';
    uint8 constant DECIMALS  = 18;
    uint256 constant TOTAL_SUPPLY = 100_000_000 * 10**uint256(DECIMALS);

    constructor() ERC20(NAME, SYMBOL) public {
        _mint(msg.sender, TOTAL_SUPPLY);
    }
}

