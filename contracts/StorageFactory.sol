//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

//import SimpleStorage contract to be deployed
import "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        //new variable of type 'simpleStorage' object equals a new SimpleStorage contract with no parameters
        SimpleStorage simpleStorage = new SimpleStorage();
        //push 'simpleStorage' to the SimpleStorage array
        simpleStorageArray.push(simpleStorage);
    }

    //anytime you want to interact with a contract, you need the address and the ABI
    function storageFactoryStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //Address
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.addPerson("Angelee", _simpleStorageNumber);
        //Application Binary Interface comes from the import above
    }

    function storageFactoryGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();
    }

}