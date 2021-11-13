// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ScopeVaiables {
    uint256 public myData;
    uint256 myStoreData;

    function getStoredData() public view returns (uint256) {
        return myStoreData;
    }
}

contract ScondContact {
    ScopeVaiables sv = new ScopeVaiables();

    function getStoredData() public view returns (uint256) {
        return sv.myData();
    }
}
