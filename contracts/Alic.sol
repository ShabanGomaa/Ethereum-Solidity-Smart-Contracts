// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Alice {
    uint256 x = 5;

    function delegateCallBob(address contractBob) public {
        // output 5
        //contractBob.delegatecall(abi.encodeWithSignature("print()"));
    }

    function CallBob(address contractBob) public {
        // output 10
        //contractBob.call(abi.encodeWithSignature("print()"));
    }
}

contract Bob {
    uint256 x = 10;

    event log(address caller, uint256 storageValue);

    function print() public {
        emit log(msg.sender, x);
    }
}
