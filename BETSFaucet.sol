// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.11;

import "./IERC20.sol";
import "./Ownable.sol";

contract OhmFaucet is Ownable {
    IERC20 public bets;

    constructor(address _bets) {
        bets = IERC20(_bets);
    }

    function setOhm(address _bets) external onlyOwner {
        bets = IERC20(_bets);
    }

    function dispense() external {
        bets.transfer(msg.sender, 1e10);
    }
}
