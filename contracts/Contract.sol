// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ContractA {
    uint256 x = 5;
    event passEvent(address indexed _from, bytes32 indexed _id, uint256 value);

    function display(bytes32 _id) public payable {
        emit passEvent(msg.sender, _id, msg.value);
    }
}

contract ContractB {
    uint256 y = 10;
}
