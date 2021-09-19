//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {

    uint256 favoriteNumber;

    //structs are ways to define a new type in Solidity, similar to objects
    struct People {
        uint256 favoriteNumber;
        string name;
    } 

    //fixed array with maximum of one person
    People[1] public person;

    //dynamic array that can hold a list of people
    People[] public people;

    //mapping
    mapping(string => uint256) nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view only function that is set to return a global variable. View means state is being read off the blockchain only.
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    //There are two ways to store information - memory and storage. Data stored in memory is execution based while data stored in storage is persistent. 
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //create a people object and push it into people array
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}