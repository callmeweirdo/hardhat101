//SDPC-License-Identifier: UNLICENSED

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

// import the hardhat console
import "hardhat/console.sol";

contract MyTest {

    uint256 public unlockedTime;
    address payable public owner;

    event withdrawal(uint256 amount, uint256 when);

    constructor(uint256 _unlockedTime) payable {
        require(block.timestamp < _unlockedTime, "Your unlock time should be in the ");

        unlockedTime = _unlockedTime;
        owner = payable(msg.sender);
    }

    function withraw() public {
        require(block.timestamp => unlockedTime, "Wait or the time period to be completed" );
        require(msg.sender == owner, "Your are not an Owner");
    }

}