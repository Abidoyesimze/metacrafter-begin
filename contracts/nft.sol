// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // Public variables to store token details
    string public tokenName = "MyToken";
    string public tokenAbbrv = "MTK";
    uint256 public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint256) public balances;

    // Mint function to create new tokens
    function mint(address account, uint256 amount) public {
        require(account != address(0), "Invalid address");
        require(amount > 0, "Mint amount must be greater than zero");

        // Increase total supply and account balance
        totalSupply += amount;
        balances[account] += amount;
    }

    // Burn function to destroy tokens
    function burn(address account, uint256 amount) public {
        require(account != address(0), "Invalid address");
        require(amount > 0, "Burn amount must be greater than zero");
        require(balances[account] >= amount, "Insufficient balance to burn");

        // Decrease total supply and account balance
        totalSupply -= amount;
        balances[account] -= amount;
    }
}
