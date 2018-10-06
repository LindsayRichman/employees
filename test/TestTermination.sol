pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Termination.sol";

contract TestTermination {
  Termination termination = Termination(DeployedAddresses.Termination());

  // Testing the adopt() function
function testUserCanTerminatePet() public {
  uint returnedId = termination.terminate(8);

  uint expected = 8;

  Assert.equal(returnedId, expected, "Termination of pet ID 8 should be recorded.");
}

// Testing retrieval of a single pet's owner
function testGetTerminatorAddressByPetId() public {
  // Expected owner is this contract
  address expected = this;

  address terminator = termination.terminators(8);

  Assert.equal(terminator, expected, "Owner of pet ID 8 should be recorded.");
}

// Testing retrieval of all pet owners
function testGetTerminatorAddressByPetIdInArray() public {
  // Expected owner is this contract
  address expected = this;

  // Store adopters in memory rather than contract's storage
  address[16] memory terminators = termination.getTerminators();

  Assert.equal(terminators[8], expected, "Owner of pet ID 8 should be recorded.");
}

}
