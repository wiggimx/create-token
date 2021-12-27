// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract WiggiCoin is ERC20Capped,Ownable {
  constructor() ERC20("WiggiCoin", "Wiggi") ERC20Capped(50000000000000000000) {
  }
  //function decimals() public view virtual override returns (uint8) {
    //return 4;
  //}
  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }
}

