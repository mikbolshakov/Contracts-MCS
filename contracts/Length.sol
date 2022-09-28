//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract Length {
  bytes public myByte = "test"; // 4 -> 4
  uint public myLength = myByte.length;
  bytes public myByte1 = "tastysandwich"; // 13 -> 13
  uint public myLength1 = myByte1.length;
  bytes public myByte2 = "tasty sandwich, thank you!"; // 26 -> 26
  uint public myLength2 = myByte2.length;
  bytes public myByte3 = unicode"tasty sandwich, спасибо большое!"; // 32 -> 46
  uint public myLength3 = myByte3.length;
    
  function Demo() public {
      myByte[0];
  }
}