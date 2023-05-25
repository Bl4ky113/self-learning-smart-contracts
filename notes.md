# Smart Contracts. General

Start: 05/22/2023
End: 

Sessions:
- 05/22/2023
- 05/24/2023

## What's a Smart Contract?

A Smart Contract is a godamn Script loaded on to the Ethereum Blockchain, 
Wallets can read and use it.

It will be just a set of orders, directions and general functionality made by code.
And will hold some data, which will be the state of the Contract.

But first, before going with the Smart Contracts, we need to learn about the Ethereum network,
all the stuff they have and general, such as:

- Ethereum --- DONE
- Ether --- DONE
- Web2 and Web3 --- DONE
- Accounts --- 
- Transactions ---
- Blocks
- Ethereum Virtual Machine (EVM)
- Gas
- Nodes and Clients
- Networks
- Consensus Mechanisms

So... Lets get reading first!

## Ethereum

Ethereum is a blockchain network, which works by a group of Nodes, or people running the EVM, backing up and validating every 
Block and its contents, such as transactions. These can only be made if the account that made the transaction on 
the block, has its own cryptographic keys.

## Ether

The Nodes which validate the Blockchain network get rewarded with ETHer, which is a cryptographic digital balance in the 
Ethereum blockhain. The amount of it depends on the resources needed to do the transaction, so if anyone is clogging the network 
they'll have to pay a shit ton of ETHer.

But it can also be created, or mined, for each block passed, validated and added to the ethereum network. 
It is divided in between the Nodes that validated the transaction. And also an 1/8th of the generated ether goes
to the account that proposed the block, & transaction.

It can be destroyed if the Node tries to backup a bar part or dishonest part of the ethereum network.
Or for each transaction of a Block. The block needs an amount of Ether to "burn" so it can be validated,
this is called gas fees. And it can be greater than the reward for mining the block. So be carefull, and 
it helps avoiding and eliminating harmfull transactions.

Generally its denominations are:

Wei: 10 ^ -18. Generally for technical implementations
Gwei: 10 ^ -9. Human readable transactions

## Accounts in the Ethereum Network

Types: 
- Externally owned Accounts (EOA). Controlled by having its private keys
    - Costs nothing
    - Can initiate transactions
    - Transactions between other EOA accounts with Ether
    - Control the account activities by using cryptographic keys
- Contract Accounts. An acound linked to a smart contract, managed by code.
    - Costs Ether since it's on the network, and it uses storage
    - Can only make transactions if it receives a transaction
    - Can have transactions with external accounts
    - It's activities can only be controlled by it's own code

Both can:
- Receive hold and send Ether and tokens
- Interact with smart contract

The accounts have four data, variables, parameters fields:
- nonce: 
- balance: the amount of ether, in Wei, of the account
- codeHash:
- storageRoot:


