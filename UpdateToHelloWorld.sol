//SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.8.0;

contract HelloWorld {

  event messagechanged(string oldmsg, string newmsg);

  string public message;

  constructor(string memory firstmessage) {

    message = firstmessage;

  }

  function update() public {

    string memory oldmsg = message;

    message = "Hello World";

    emit messagechanged(oldmsg, message);

  }

  
}