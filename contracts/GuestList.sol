//SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.0;

contract GuestList {

  struct Friends {       
    string name;        
    bool invited;
  }

  Friends [] public friendList;
  Friends [] public guestList;

  function addFriend(string memory _name, bool _invited) public {
    friendList.push(Friends({name: _name, invited: _invited}));
  } 

    function whoWillCome() public {
        for(uint i = 0; i < friendList.length; i++) {
            if (friendList[i].invited) {
                guestList.push(friendList[i]);
            }
        }
    }
}
