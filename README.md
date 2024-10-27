 MC Week 2 Project: Expanding SimpleStorage with Solidity Concepts

This project is part of the MC Week 2 tasks, focusing on expanding the SimpleStorage contract with more advanced Solidity concepts. By following the instructions, we developed additional functionalities using data types, visibility specifiers, structs, enums, and functions, all within the Remix IDE.

Project Features

Part 1: Setting up the Development Environment
- Remix IDE: Accessed Remix IDE in the browser to continue development on the existing SimpleStorage contract from Week 1.
- Workspace Setup: Opened the existing workspace and prepared the SimpleStorage.sol file for expansion.

Part 2: Adding Variables and Data Types
In this section, foundational data types and structures were implemented:
- Favorite Number: Added `uint256 favoriteNumber publi` to store a user's favorite number.
- Array for Multiple Numbers: Introduced `uint256[] public favoriteNumbers` for dynamic storage of multiple favorite numbers.
- Struct Definition: Created a `Person` struct containing `name` (string) and `favoriteNumber` (uint256).
- Array of Structs: Defined `Person[] public people` to store an array of `Person` entries.
- Contract State Enum: Defined `enum ContractState` with states `Active` and `Inactive`, managed by `state`.

Part 3: Functions, Conditionals, and Loops
Core functionalities and control structures were implemented in this part:
- Basic Functions:
  - `storeNumber(uint256 _number)`: Sets `favoriteNumber` with a provided value.
  - `getFavoriteNumber()`: Public function to retrieve `favoriteNumber`.
- Conditional Logic:
  - `isGreaterThan(uint256 _value)`: Compares `favoriteNumber` with `_value` and returns `true` if `favoriteNumber` is greater.
- Loop Implementation:
  - `sumToFavoriteNumber()`: Sums numbers from 1 to `favoriteNumber` using a loop for demonstration of iteration.

Part 4: Visibility Modifiers
Experimented with various visibility levels to control access:
- Private Variable: Changed `favoriteNumber` to private to restrict direct access.
- Internal and Public Functions:
  - `internalFunction()`: An internal function that returns a string.
  - `callInternalFunction()`: Public function that calls `internalFunction` to demonstrate internal visibility.
- External Function:
  - `externalFunction()`: An external function that returns a string.
  - `testExternalFunction()`: Public function using the `this` keyword to call `externalFunction`.

Part 5: Arrays, Structs, and Enums
Developed more advanced data structures to expand storage capabilities:
- Dynamic Array Management:
  - `addFavoriteNumber(uint256 _number)`: Adds a new number to the `favoriteNumbers` array.
- Working with Structs:
  - `addPerson(string memory _name, uint256 _favoriteNumber)`: Adds a new `Person` entry to the `people` array.
- Enum Operations:
  - `activateContract()`: Sets the contract state to `Active`.
  - `deactivateContract()`: Sets the contract state to `Inactive`.
  - `isActive()`: Checks the current state of the contract.

Part 6: Compilation, Testing, and GitHub
After implementing the functions, we tested and managed the code:
- Compile: Used the Remix Solidity compiler to verify syntax and functionality.
- Deployment and Testing: Deployed the contract locally within Remix and tested each function to ensure expected outputs.
- GitHub Integration: Uploaded the project to GitHub, ensuring proper version control.

Challenges and Solutions
- Visibility Challenges: Adjusting to various visibility specifiers required multiple tests. Using `this` keyword for `externalFunction` helped clarify the distinction between internal and external.
- Struct and Array Management: Organizing data within structs and dynamic arrays was initially challenging. Step-by-step testing and debugging resolved issues with storage and retrieval.
- Loop Usage: Solidity’s constraints on loops required careful iteration design to avoid potential runtime issues.


Project Repository
[GitHub Repository/(https://github.com/WildflowerEnam/Web3_repoCelo)
