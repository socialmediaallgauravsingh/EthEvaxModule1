# Age Verifier Smart Contract

The **Age Verifier** smart contract is a simple Solidity contract that allows the owner to set and retrieve age information for users. The contract ensures that only the owner can set age values and enforces an age limit of 18 years or older.

## Features

- **Set Age:** The owner of the contract can set the age of a user by providing the user's address and the corresponding age. The age must be 18 years or older to be set.

- **Get Age:** Anyone can query the contract to retrieve the age of a specific user by providing their address.

- **Owner Functionality:** The contract has a modifier named `onlyOwner` that restricts certain functions to be callable only by the owner. This provides a level of access control.

- **Assertions and Reverts:** The contract demonstrates the use of `assert` and `require` statements. The `assertExample` function showcases the use of `assert` to validate a condition. The `revertExample` function demonstrates the use of `require` and `revert` to revert a transaction if a condition is not met.

## Usage

1. Deploy the smart contract on the Ethereum blockchain using a Solidity compiler that supports version 0.8.0 or higher.

2. The `constructor` will initialize the contract, setting the deployer's address as the owner.

3. Use the `setAge` function to set the age of a user. Only the owner can call this function. The user's address and age must be provided as arguments.

4. Use the `getAge` function to retrieve the age of a user by providing their address.

5. Explore the `assertExample` and `revertExample` functions to understand how assertions and reverts work in Solidity.

## License

This code is released under the MIT License. You can find the full license text in the SPDX-License-Identifier comment at the beginning of the Solidity file.

**Note:** This smart contract is provided as a basic example and may not cover all security considerations. When using smart contracts in real applications, it's important to conduct thorough testing and security audits.

For more information about Solidity and Ethereum smart contracts, refer to the official [Solidity documentation](https://soliditylang.org/docs/) and [Ethereum website](https://ethereum.org/).

video Walkthrough
https://www.loom.com/share/182584404e0046b9ac4f2031bfcd0e3a?sid=a29f201f-b1be-4b76-86b1-4c37909f9d62
