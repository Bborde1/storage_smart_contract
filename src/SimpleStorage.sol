// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //Run the trap, stop being unhappy

contract SimpleStorage {
    uint256 myFavoriteNumber;
    string name;

    uint256[] listOfFavoriteNumbers;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person({favoriteNumber:7, name: "Pat"});

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
        listOfFavoriteNumbers.push(_favoriteNumber);
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(
            Person({favoriteNumber: _favoriteNumber, name: _name})
        );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
