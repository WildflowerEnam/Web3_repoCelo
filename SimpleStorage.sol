// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    uint256 private  favoriteNumber;
    uint256[] public favoriteNumbers;

    struct Person {
        string name ;
        uint256 favoriteNumber;
    }


    Person[] public people ;

    enum contractState{Active,Inactive}
    contractState public  state;

    function storeNumber(uint256  _favoriteNumber ) public {
        favoriteNumber = _favoriteNumber;
    }

    function getFavoriteNumber () public view returns (uint256 ){
        return favoriteNumber ;
    }

    function isGreaterrThan(uint256 _compareValue) public view  returns (bool){
        if(favoriteNumber > _compareValue){
            return true;
        }
        else{
            return false;
        }
    }

    function sumToFavoriteNumber() public view returns (uint256){
        uint256 sum=0;
        for(uint256 i =1;i<=favoriteNumber ;i++){
            sum += i;
        }
        return sum;
    }

    function internalFunction() internal pure returns (string memory ){
        return "This is an internal string";
    }

    function callInternalFunction() public pure returns (string memory ){
        return internalFunction();
    }

    function externalFunction() external pure returns (string memory ){
        return "This is an external function ";
    }

    function testExternalFunction() public view returns (string memory ){
        return this.externalFunction();
    }


    function addFavoriteNumber() public{
         favoriteNumbers.push(favoriteNumber);
    } 


    function adddPerson(string memory _name, uint256 _favoriteNumber ) public {
        people.push(Person(_name,_favoriteNumber ));
    }

    function activeContract () public {
         state =contractState.Active ;
    }

    function deactiveContract() public {
        state = contractState.Inactive ;
    }

    function isActive() public view returns (bool){
        return state == contractState.Active;
    }


}