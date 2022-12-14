// smart contract in solidity by Chirag Gangal
pragma solidity ^0.5.0;
contract SampleContract {
  address public owner;
  string public message;
  
  constructor() public {
    owner = msg.sender;
    message = "Welcome to Chirag's Smart Contract";
  }
  
  function setMessage(string memory _message) public {
    require(msg.sender == owner);
    message = _message;
  }
  
  function getMessage() public view returns (string memory) {
    return message;
  }
}
