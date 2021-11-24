// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

// Open Zeppelin is the ERC721 protocol
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // Name of the NFT and its symbol
    constructor() ERC721("MyNFT", "MNFT") {
        // From buildspace: It is tricky to debug smart contracts
        // but Hardhat provides the ability to console log
        console.log("Testing smart contract. It works!");
    }

    function makeAnEpicNFT() public {
        // Get the current token ID - this starts at 0;
        uint256 newItemId = _tokenIds.current();

        _safeMint(msg.sender, newItemId);

        // The token URI is what's going to hold
        // the data on the NFT.
        _setTokenURI(newItemId, "https://jsonkeeper.com/b/KMDT");

        _tokenIds.increment();

        console.log(
            "An NFT w/ ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
    }
}
