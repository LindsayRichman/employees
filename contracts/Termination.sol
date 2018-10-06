pragma solidity ^0.4.17;

contract Termination {

  address[16] public terminators;

  // Adopting a pet
function terminate(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  terminators[petId] = msg.sender;

  return petId;
}

// Retrieving the adopters
function getTerminators() public view returns (address[16]) {
  return terminators;
}

}
