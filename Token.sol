// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title Ditec
 * @dev Versión más simple de la interfaz ERC20
 * @dev 
 */
contract Token is ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Ditec", "DTC", 18) {
        _mint(msg.sender, 56000000 * (10 ** uint256(decimals())));
    }
}