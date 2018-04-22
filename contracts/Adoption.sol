pragma solidity ^0.4.17;

contract Adoption {
	// array of Ethereum addresses (for each account, contract)
	// petID is key/index that returns address of owner
	address[12] public adopters;

	// Maximal matching on members


	// Adopting a pet
	function adopt(uint petId) public returns (uint) {
  		// require(petId >= 0 && petId <= 12);

	  	adopters[petId] = msg.sender;

  		return petId;
	}

	// Retrieving the adopters
	function getAdopters() public view returns (address[12]) {
  		return adopters;
	}
	
}

