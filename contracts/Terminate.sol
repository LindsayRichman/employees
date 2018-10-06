pragma solidity ^0.4.17;

contract Termination {

  address[16] public terminate;

  // Adopting a pet
function terminate(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  terminate[petId] = msg.sender;

  return petId;
}

// Retrieving the adopters
function getTerminators() public view returns (address[16]) {
  return terminate;
}

}
