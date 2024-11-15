MyToken Smart Contract
Overview
The MyToken smart contract is a simple implementation of a token system built using Solidity. It allows users to mint and burn tokens, with essential safeguards to ensure secure and predictable behavior.

This contract features public variables to store token details, a mapping to track balances, and two core functions: mint and burn. These functions enable token creation and destruction while maintaining proper validation.

Features
Token Details:

Name: "MyToken"
Abbreviation: "MTK"
Total Supply: Publicly accessible via the totalSupply variable.
Balance Tracking:

The contract maintains a mapping of addresses to their token balances.
Mint Function:

Allows creation of new tokens and assigns them to a specified address.
Increases both the total supply and the balance of the recipient.
Burn Function:

Allows destruction of tokens from a specified address.
Decreases both the total supply and the balance of the specified address.
Includes safeguards to ensure sufficient balance before burning.
Contract Functions
1. mint(address account, uint256 amount)
Description: Creates new tokens and assigns them to the specified address.
Parameters:
account: The address to receive the minted tokens.
amount: The number of tokens to mint.
Validation:
The account must not be a zero address.
The amount must be greater than zero.
Effects:
Increases the totalSupply by the amount.
Updates the balance of the account.
Example:
solidity
mint(0x123...ABC, 1000);
This mints 1000 tokens for the address 0x123...ABC and updates the totalSupply accordingly.

2. burn(address account, uint256 amount)
Description: Destroys tokens from the specified address.
Parameters:
account: The address from which tokens will be burned.
amount: The number of tokens to burn.
Validation:
The account must not be a zero address.
The amount must be greater than zero.
The account must have a balance greater than or equal to the amount.
Effects:
Decreases the totalSupply by the amount.
Deducts the amount from the balance of the account.
Example:
solidity
burn(0x123...ABC, 500);
This burns 500 tokens from the address 0x123...ABC and reduces the totalSupply accordingly.

Public Variables
tokenName: The name of the token ("MyToken").
tokenAbbrv: The abbreviation for the token ("MTK").
totalSupply: Tracks the total number of tokens in existence.
balances: A mapping of addresses to their respective balances.
How to Use
1. Deploy the Contract
Use any Ethereum-compatible environment (e.g., Remix, Hardhat) to deploy the contract.
2. Mint Tokens
Call the mint function with the recipient's address and the desired amount.
Example:
solidity
mint(0x123...ABC, 1000);
This mints 1000 tokens for the specified address.
3. Burn Tokens
Call the burn function with the address and the amount to burn.
Example:
solidity
burn(0x123...ABC, 500);
This burns 500 tokens from the specified address.
Security Considerations
Zero Address Validation:

Both mint and burn functions validate that the account parameter is not a zero address.
Balance Validation:

The burn function ensures that the address has a sufficient balance before proceeding.
Access Control:

This implementation is basic and does not include advanced access control (e.g., only allowing the owner to mint or burn). Consider adding an onlyOwner modifier if necessary.
Example Interactions
Mint Tokens:

Mint 1000 tokens to 0x123...ABC:
solidity

mint(0x123...ABC, 1000);
Result:
totalSupply: Increases by 1000.
balances[0x123...ABC]: Increases by 1000.
Burn Tokens:

Burn 500 tokens from 0x123...ABC:
solidity
burn(0x123...ABC, 500);
Result:
totalSupply: Decreases by 500.
balances[0x123...ABC]: Decreases by 500.
