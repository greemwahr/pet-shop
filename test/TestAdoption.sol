<<<<<<< 539fb52d3fe3764b715d6e2b5eaa35a60a4b2b3f
pragma solidity ^0.4.17
=======
pragma solidity ^0.4.17;
>>>>>>> Stashing branch

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    // Test the adopt() function
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(8);
        uint expectedId = 8;

        Assert.equal(returnedId, expectedId, "Adoption of pet ID 8 should be recorded.");
    }

    function testGetAdopterAddressByPetID() public {
        // Expected owner is this contract
        address expectedAddress = this;
        address adopterAddress = adoption.adopters(8);

        Assert.equal(adopterAddress, expectedAddress, "Owner of pet ID 8 should be recorded");
    }

    // Testing retrieval of all pet owners
    function testGetAdopterAddressByPetIDInArray() public {
        // Expected owner is this contract
        address expectedAddress = this;

        // Store adopters in memory rather than contract's storage
<<<<<<< 539fb52d3fe3764b715d6e2b5eaa35a60a4b2b3f
        address[16] memory adoptersAddresses = adoption.getAdopers();
=======
        address[16] memory adoptersAddresses = adoption.getAdopters();
>>>>>>> Stashing branch

        Assert.equal(adoptersAddresses[8], expectedAddress, "Owner of pet ID 8 should be recorded");
    }
}