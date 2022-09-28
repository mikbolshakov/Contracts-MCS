//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Converter {
  string[] public units = ["Finney", "Gwei", "Wei"];

  function convertEth(uint _eth, uint _ind) public pure returns(uint){
       if (_ind == 0) {
        return _eth * 1000;
        } else if (_ind == 1) {
        return _eth * 1000000000;
        } else if (_ind == 2) {
        return _eth * 1000000000000000000;
        } else {
        return _eth;
        }
    }
} 