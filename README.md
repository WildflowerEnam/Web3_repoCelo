Decentralized Donation App

Project Overview
This project focuses on building and deploying a decentralized donation app on the Ethereum Sepolia Testnet. The app implements a secure donation contract with features like funding, withdrawals, and enforcement of minimum donation requirements in USD using Chainlink oracles.

Features


 
 Core Functionalities:

ETH Donations: Accept ETH contributions while tracking each donor and their donation amount.
Minimum USD Requirement: Enforce a minimum donation of $50 using Chainlink price feeds.
Owner Privileges: Restrict sensitive functions like withdrawals to the contract owner.
Reentrancy Protection: Implement the CEI (Checks-Effects-Interactions) pattern for secure withdrawals.


Additional Features:

Event logging for transparency (DonationReceived, FundsWithdrawn).
Support for direct ETH transfers via receive().
Deployment Details


Contract Addresses:

Donation.sol: <Deployed Donation Contract Address>
PriceConverter.sol: <Deployed PriceConverter Contract Address>
Setup Instructions


Setting Up the Environment

Remix IDE:
Set up a clean workspace.
Create Donation.sol and PriceConverter.sol.
MetaMask:
Configure for Ethereum Sepolia Testnet.
Obtain Sepolia ETH from a faucet.

 
 Writing the Donation Contract

Basic Structure:
Donation.sol: Defines the donation contract.
Constructor sets the deployer as the owner.
Price Conversion:
Create PriceConverter.sol for ETH to USD conversion using Chainlink.
Functional Implementation:
Add fund() to accept donations and enforce minimum USD requirements.
Add withdraw() with owner-only access and reentrancy protection.
Handle edge cases (e.g., 0 ETH donations, non-owner withdrawals).
Fallback Functionality:
Include a receive() function for direct ETH transfers.

 
 Deploying and Testing

Deployment:
Deploy Donation.sol using Remix and MetaMask.
Provide the Chainlink ETH/USD price feed address.
Testing:
Verify donations via fund() and DonationReceived events.
Ensure withdrawals work only for the owner (FundsWithdrawn event).
Test edge cases like 0 ETH donations and unauthorized withdrawals.
Challenges and Resolutions

Challenges:

Configuring MetaMask for Sepolia Testnet:
Solution: Used online guides and faucets to obtain Sepolia ETH.
Chainlink Integration:
Solution: Followed official documentation to implement AggregatorV3Interface.
Handling Reentrancy Attacks:
Solution: Adopted the CEI pattern and used call() for secure fund transfers.


Insights:

Gained practical knowledge of Solidity, Remix IDE, and Ethereum deployment.
Learned the importance of edge case testing and security in smart contracts.
Understood the value of tools like Chainlink oracles for real-world usability.
Submission Requirements
GitHub Repository: [Insert Repository Link Here]
Deliverables:
Contract code (Donation.sol and PriceConverter.sol).
This README file.
