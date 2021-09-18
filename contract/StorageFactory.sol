//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

//import SimpleStorage contract to be deployed
import "./SimpleStorage.sol";

contract StorageFactory {

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
    }

}