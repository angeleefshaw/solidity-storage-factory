//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//import SimpleStorage contract to be deployed
import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function storageFactoryStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address
        //Application Binary Interface
    }

}