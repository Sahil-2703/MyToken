# MyToken

This Solidity program is a program of minting and burning the token. User can mint the token and add this minted token to their total balance and can burn thier token that'll deduct from their total balance.

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a two function which mint and burn the tokens. This program serves the basic idea of how token works in blockchain and how user can mint and burn it with a program.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Mint_Burn.sol). Copy and paste the following code into the file:

```javascript
pragma solidity >=0.5.0 < 0.9.0;

contract Project1
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the function. Click on the "MyToken" contract in the left-hand sidebar, their you can see token name, token abbrv and total supply, by clicking on this you get the data that has been stored in our progrma. Their are two function one is mint and other is burn. 
First copy the address from the account that is provide in the account section of deploy part than paste in the address part of mint function (you have to expand the function for providing the address and token value.) paste the address the enter the token value and than click on the mint button. After that click on the balance button providing the same address and you'll see the minted token their, same with burn function. Do the same steps and you'll see the result in balance and total supply variable.

## Authors

Sahil Singh  
[Sahil-2703](https://github.com/Sahil-2703)


## License

This project is licensed under 'SPDX-License-Identifier: GPL-3.0'