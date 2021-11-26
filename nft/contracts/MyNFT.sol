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
        _setTokenURI(
            newItemId,
            "data:application/json;base64,ewogICAgIm5hbWUiOiAiVGhyZWUgV29yZCBORlQiLAogICAgImRlc2NyaXB0aW9uIjogIldoYXQgZG8geW91IG5lZWQ/IiwKICAgICJpbWFnZSI6ICJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSEJ5WlhObGNuWmxRWE53WldOMFVtRjBhVzg5SW5oTmFXNVpUV2x1SUcxbFpYUWlJSFpwWlhkQ2IzZzlJakFnTUNBek5UQWdNelV3SWo0S0lDQWdJRHh6ZEhsc1pUNHVZbUZ6WlNCN0lHWnBiR3c2SUhkb2FYUmxPeUJtYjI1MExXWmhiV2xzZVRvZ1NHVnNkbVYwYVdNc0lITmhibk10YzJWeWFXWTdJR1p2Ym5RdGMybDZaVG9nTVRSd2VEc2dabTl1ZEMxM1pXbG5hSFE2SUdKdmJHUTdJSDA4TDNOMGVXeGxQZ29nSUNBZ1BISmxZM1FnZDJsa2RHZzlJakV3TUNVaUlHaGxhV2RvZEQwaU1UQXdKU0lnWm1sc2JEMGlJME00UVRKRE9DSWdMejRLSUNBZ0lEeDBaWGgwSUhnOUlqVXdKU0lnZVQwaU5UQWxJaUJqYkdGemN6MGlZbUZ6WlNJZ1pHOXRhVzVoYm5RdFltRnpaV3hwYm1VOUltMXBaR1JzWlNJZ2RHVjRkQzFoYm1Ob2IzSTlJbTFwWkdSc1pTSStRbkpsWVhSb1pTQkdiMk4xY3lCTVpXRnliand2ZEdWNGRENEtQQzl6ZG1jKyIKfQ=="
        );

        _tokenIds.increment();

        console.log(
            "An NFT w/ ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
    }
}
