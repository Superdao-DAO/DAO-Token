pragma solidity ^0.5.0;

import './openzeppelin_v2_5_0/token/ERC20/ERC20.sol';
import './openzeppelin_v2_5_0/token/ERC20/ERC20Detailed.sol';

contract SDAOToken is ERC20, ERC20Detailed {
    string constant NAME    = 'SuperDAO Token';
    string constant SYMBOL  = 'SDAO';
    uint8 constant DECIMALS  = 18;
    uint256 constant TOTAL_SUPPLY = 100_000_000 * 10**uint256(DECIMALS);

    constructor() ERC20Detailed(NAME, SYMBOL, DECIMALS) public {
        _mint(msg.sender, TOTAL_SUPPLY);
    }
}

