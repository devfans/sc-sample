// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract Adoption {

    address[16] public adopters;

    // adopt a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 16);
        adopters[petId] = msg.sender;
        return petId;
    }

    // retrieve the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
    
}