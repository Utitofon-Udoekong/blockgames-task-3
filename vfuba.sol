// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract VuzaPrime is ERC20 {
    uint256 public tokensPerEth = 1000;
    uint256 initialSupply = 1000000e18;
    mapping(address => uint256) balances;
    constructor() ERC20("VuzaPrime", "VZP") {
        _mint(msg.sender, initialSupply);
    }
    
    function buyToken(address receiver,uint amount) public payable {
        uint256 tokenAmount = amount * 1000;
        _mint(receiver, tokenAmount);
        initialSupply += tokenAmount;
    }
}




