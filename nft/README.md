# NFT Collection Project

In this folder, you'll find the implementation of the "Mint your own NFT collection" project from buildspace.

It uses Solidity and Hardhat.

## Learnings

- Hardhat is a tool that helps us compile and locally test smart contracts.

- `hre` stands for Hardhat Runtime Environment and it's used in the script to deploy the contract.
  - since the script is used in the context of running `npx hardhat`, the global object `hre` will have been built using `hardhard.config.js`.

## Questions that popped up

While I was going through the project, I had the following questions:

- How is the problem of race condition solved within `makeAnEpicNFT`? If two people trigger `makeAnEpicNFT` at the same time, they'd have the same ID. Would one of them fail?

## How to run this project

```
npx hardhat run scripts/run.js
```
