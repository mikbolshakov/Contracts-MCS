// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructDemo {
  struct Payment {
    uint amount;
    uint timestamp;
  }
  struct Balance {
    uint totalBalance;
    uint numPayments;
    mapping(uint => Payment) payments;
  }
  mapping(address => Balance) public balanceReceived;

    function receiveMoney() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;
        Payment memory payment = Payment(msg.value, block.timestamp);

        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].numPayments] = payment;
        balanceReceived[msg.sender].numPayments++;
    }

    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
    
        balanceReceived[msg.sender].totalBalance = 0;
    
        _to.transfer(balanceToSend);
    }
}