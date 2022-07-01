// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

// ERC721.sol: a 'vanilla' implementation for Non-Fungible Tokens that already implements a ton of useful helper functions. refer to [OpenZeppelin's documentation] (https://docs.openzeppelin.com/contracts/4.x/erc721) 
// Counters.sol: Provides counters that can only be incremented, decremented or reset that we can use to keep track of total tokens minted as well as quickly get the next tokenId to mint.

// NFT to inherit from ERC721.sol
contract NFT is ERC721 {
    // declare a Counter that we will use to efficiently keep track of the total tokens minted in our contract.
    using Counters for Counters.Counter;
    Counters.Counter private currentTokenId;
    
    // calls parent ERC721 constructor and passes in two strings: `name` and `symbol`.
    constructor() ERC721("MyNFT", "MNT") {}
    
    // This public function can be called by passing in a valid recipient address in order to mint a new NFT.
    // returns the total number of tokens minted in our contract.
    function mintTo(address recipient)
        public
        returns (uint256)
    {
        // increments our currentTokenId Counter by 1.
        currentTokenId.increment();
        uint256 newItemId = currentTokenId.current();
        // using OpenZeppelin's nifty _safeMint() private method and mints the next value of the Counter to the recipient
        _safeMint(recipient, newItemId);
        // returns the newly minted token's ID back to the caller.
        return newItemId;
    }
}