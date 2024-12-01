// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface AggregatorV3Interface {
    function latestRoundData() external view returns(
        uint80 roundId,
        int256 answer,
        uint256 startedAT,
        uint256 updatedAT,
        uint80 answeredInRound


    );
    
} 

library PriceConverter{
    function getPrice() internal view returns (uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x694AA1769357215DE4FAC081bf1f309aDC325306
        );
        (,int256 price,,, )= priceFeed.latestRoundData();
        return uint256(price *1e10);
    }

    function getConversionRate(uint256 ethAmount) internal  view returns (uint256) {
        uint256 ethPrice = getPrice();
        return (ethPrice * ethAmount)/1e18;
        
    }
}