// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract EmployeeContract {
    string fullName;

    constructor() {
        fullName = "Shaban";
    }

    function setEmployeeName(string memory name) public payable {
        fullName = name;
    }

    function getName() public view returns (string memory) {
        return fullName;
    }
}
