pragma solidity ^0.4.17;

contract Match {
	address[12] public adopters;

	// Maximal matching on members


	// Adopting a pet
	function adopt(uint petId) public returns (uint) {
  		require(petId >= 0 && petId <= 11);

	  	adopters[petId] = msg.sender;

  		return petId;
	}

	// Retrieving the adopters
	function getAdopters() public view returns (address[12]) {
  		return adopters;
	}
	
}

