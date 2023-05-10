// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myNumber;

    event NumberChanged(uint256 newValue);

    constructor(uint256 initialNumber) {
        myNumber = initialNumber;
    }

    function setNumber(uint256 newValue) public {
        myNumber = newValue;
        emit NumberChanged(newValue);
    }

    function getNumber() public view returns (uint256) {
        return myNumber;
    }
}
