// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MappingContract {
    struct Person {
        string name;
        uint256 age;
    }

    mapping(address => Person) personStruct;
    address[] private personAddresses;

    function setPerson(string memory name, uint256 age) public {
        personStruct[msg.sender].name = name;
        personStruct[msg.sender].age = age;
        personAddresses.push(msg.sender);
    }

    function getPeople() public view returns (address[] memory) {
        return personAddresses;
    }
}
