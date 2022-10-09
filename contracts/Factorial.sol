//SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract Factorial {
  function factorial(uint x) public pure returns (uint y) {
    y = 1;
    for (uint i = 1; i <= x; i++) {
      y = i * y;
    }
    return y;
  }
}
