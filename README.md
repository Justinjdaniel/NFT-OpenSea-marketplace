# Getting Started <!-- https://docs.opensea.io/docs/getting-started-1 -->

New tradeable NFT using ERC721, with immediate OpenSea marketplace integration.

## Installation

Install all the dependencies with npm

```bash
npm install
```

## Compile the contract

Create a new file, `.env` in the root folder of the project. Store the private key of MetaMask account as well as our Alchemy API key.
> **Tip!** - You can use the `.env.example` file as a template.
> * Get your private key from your MetaMask wallet by following the instructions [here](https://metamask.zendesk.com/hc/en-us/articles/360015289632) 
> * Get your Alchemy API key [here](https://docs.alchemy.com/alchemy/introduction/getting-started)

Compile the contract
```bash
npx hardhat compile
```

## Deploy the contract

```bash
npx hardhat run scripts/deploy.js --network rinkeby
```
