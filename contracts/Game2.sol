//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//import "hardhat/console.sol";

contract Game2 {
  uint public x;
  uint public y;

  function setX(uint _x) external {
    //console.log("-------------------------VALUE OF X-------------------------");
    //console.log(x);
    x = _x;
  }

  function setY(uint _y) external {
    //console.log("-------------------------VALUE OF Y-------------------------");
    //console.log(y);
    y = _y;
  }

  event Winner(address winner);

  function win() public {
    //console.log("AAA");
    require(x > 0 && y > 0);
    require(x + y == 50);
    emit Winner(msg.sender);
  }
}