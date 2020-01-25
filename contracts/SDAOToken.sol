pragma solidity ^0.5.0;

import './openzeppelin_v2_4_0/token/ERC777/ERC777.sol';

contract SDAOToken is ERC777 {
    string constant NAME    = 'SuperDAO Token';
    string constant SYMBOL  = 'SDAO';
    uint256 constant TOTAL_SUPPLY = 100_000_000 * 10**18;

    constructor() ERC777(NAME, SYMBOL, new address[](0)) public {
        _mint(msg.sender, msg.sender, TOTAL_SUPPLY, '', '');
    }
}

