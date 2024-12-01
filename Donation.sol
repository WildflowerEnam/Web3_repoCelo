// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./PriceConverter.sol";

contract Donation{
    using PriceConverter for uint256;

    address public owner;
    uint256 public constant MINIMUM_USD = 50 *1e18;
    constructor(){
        owner = msg.sender;
    }

    mapping(address=>uint256) public donations;
    address[] public funders;


    function fund() public payable {
        require(msg.value.getConversionRate() >= MINIMUM_USD,"Minimum donation is $50");
        donations[msg.sender] += msg.value;
        funders.push(msg.sender);
        emit DonationReceived(msg.sender,msg.value);
   }

    event DonationReceived(address indexed donor, uint256 amount);

    function withdraw() public onlyOwner{
        uint256 contractBalance = address(this).balance;
        require(contractBalance > 0,"No funds to withdraw");

        (bool success,) = owner.call{value: contractBalance}("");
        require(success,"withdrawal failed");

        emit FundsWithdrawn(owner,contractBalance);
    }
    


    modifier onlyOwner(){
        require(msg.sender == owner, "Only owner can withdrawn funds");
        _;
    }

    event FundsWithdrawn(address indexed owner, uint256 amount);
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //function fund() public payable {
    //require(msg.value > 0, "Donation must be greater than 0");
//}

    receive() external payable {
    emit DonationReceived(msg.sender, msg.value);
}
}
