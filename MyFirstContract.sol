// SPDX-License-Identifier: MIT

pragma solidity >= 0.6.0;

contract MyFirstContract
{
    uint256 myNumber;

    struct Person
    {
        uint256 myNumber; 
        string name;
    }

    Person[] public people;
    mapping(string => uint256) public nameToMyNumber;

    function store(uint256 _myNumber) public
    {
        myNumber = _myNumber;
    }

    function retrieveStore() public view returns(uint256)
    {
        return myNumber;
    }

    function createPerson(uint256 _myNumber, string memory _name) public
    {
        people.push(Person(_myNumber, _name));

        nameToMyNumber[_name] = _myNumber;
    }
    
}