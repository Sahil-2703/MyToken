// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract MyToken
{
    string public tokenName = "Sahil";
    string public tokenAbbrv = "Singh";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address user, uint value) public 
    {
        totalSupply += value;
        balances[user] += value;
    }

    function burn(address owner, uint value) public
    {
        if(balances[owner]>=value)
        {
            totalSupply -= value;
            balances[owner] -= value;
        }
    }
}