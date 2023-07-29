// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public value;

    function setValue(uint256 _newValue) external {
        
        require(_newValue > 0, "Value must be greater than zero");
        require(_newValue != value, "New value must be different from the current value");

        value = _newValue;
    }

    function divide(uint256 _numerator, uint256 _denominator) external pure returns (uint256) {
        
        assert(_denominator != 0);

        
        return _numerator / _denominator;
    }

    function fail() external pure {
        
        revert("This transaction intentionally fails");
    }
}
