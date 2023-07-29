# ErrorHandlingContract

This is a Solidity smart contract that demonstrates different error handling techniques using `assert`, `revert`, and `require` functions.

## License

This contract is using the MIT License.

## Prerequisites

- Solidity ^0.8.0

## Contract Details

The `ErrorHandlingContract` contract provides the following functions:

### `setValue(uint256 _newValue)`

- The `setValue` function allows external users or other contracts to update the `value` state variable of the smart contract.
- Users can call this function and pass a new unsigned integer value `_newValue` as an argument.
- Before updating the `value`, the function checks if `_newValue` is greater than zero using the `require()` statement.
- It also verifies if the new value is different from the current `value` to avoid unnecessary updates.
- If the input conditions are met, the function updates the `value` with the `new _newValue`.
- If the input conditions are not satisfied, the function will throw an exception, reverting the transaction and displaying the corresponding error message.
- By using the `require()` statement, the function provides feedback to the caller, preventing them from making invalid or unnecessary updates to the `value`.
- This function can be useful in scenarios where users need to update a state variable within the smart contract while ensuring that certain conditions are met before performing the update. For example, it could be used in an auction contract where bidders need to set their bids, but the bids must be higher than the current highest bid and should not be zero.




### `divide(uint _numerator, uint _denomenator)`

- The `divide` function performs a division operation on two unsigned integer values, `_numerator` and `_denominator`.
- External users or other contracts can call this function and provide `_numerator` and `_denominator` as input arguments.
- Before performing the division, the function checks if the `_denominator` is not zero using the `assert()` statement.
- If the `_denominator` is zero, the `assert()` statement will trigger an internal error, causing the transaction to revert and preventing division by zero.
- If the `_denominator` is not zero, the function proceeds with the division and returns the result.


### `fail()`

- The `fail()` function intentionally causes the transaction to revert with a custom error message.
- It is primarily used for testing, debugging, or handling exceptional cases in the smart contract.
- Developers can include descriptive error messages to provide clear feedback about the reason for the failure.
- Caution should be exercised when using `fail()` in production contracts, as it should only be used for specific purposes and not for regular operations.
- Proper error handling mechanisms should be in place to ensure a smooth user experience and prevent unexpected failures in real-world scenarios.


## Usage

1. Make sure you have Solidity ^0.8.0 installed.
2. Compile and deploy the `ErrorHandlingContract` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.

## Video Walkthrough

- https://www.loom.com/share/7d359955df3649e6812568dee56de62c?sid=b9c796f4-7a76-471f-ac23-3c3dc56fb89e


Feel free to explore and modify the contract according to your needs!
