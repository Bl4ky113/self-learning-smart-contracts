# Smart Contracts. General

Start: 05/22/2023
End: 

Sessions:
- 05/22/2023
- 05/24/2023
- 05/25/2023

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
- Transactions --- DONE
- Blocks --- DONE
- Ethereum Virtual Machine (EVM) --- 
- Gas ---
- Nodes and Clients ---
- Networks --- 
- Consensus Mechanisms --- 

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

## Transactions in the Ethereum Network

It the most simple action the Ethereum Network, 
by just passing some Ether from an EOA to another.
It can be made by any Node in the Network. 

They have these values:
- from: address of the sender and signer EOA
- recipient: address of another EOA or a Smart Contract
- signature: the identification made by the sender's private key
- nonce: the transaction number in the network
- value: amount of ether sent, in Wei
- data: any arbitrary data
- gasLimit: the maximum units of gas required by each computational step in the transaction. Defined by the EVM 
- maxPriorityFeePerGas: maximum price of gas to be included as a tip to the validator nodes
- maxFeePerGas: maximum fee per unit of gas willing to be paid in the transaction

Progress & steps of an Transaction:
1. Load the transaction into the Network, with its hash
2. The EVM wil calculate the gas fees. Generally using 21000 units of gas
3. A Validator can pickup the transactio and move it in to a Block.
4. It will be mined with other transactions, beeing in a state of 'justified'
5. When the mining of the block is complete, the transaction will now be 'finalized'

## Block in the Ethereum Network

The main goal of blocks are grouping a bunch of transactions into a 
big chunk so they can be added to the network in a chain style. 
Making references to the previous block, so if its contents are 
changed somehow, it will reflect on the following blocks.
Giving a strong security against modifications to the blockchain.

The blocks are not validated via Proof of Stake, which is different from 
Proof of Work, like other blockchains do their transactions.
It goes like: 
1. A Validator Node first stakes 32 ETH into a security deposit, so if 
they are doing some nasty stuff, they loss money.
2. A Validator is choosen to propose a new block, where they bunddle the 
transactions and then validate them.
3. Other validators replicate and broadcast the transactions, so all the 
network has the newest of the information.
4. If a block has conflicts with other block, the one with most staked Ether will be 
used in the verified network.

Each of the Validation process of a Block happens in only 12 seconds, but the 
verification of a transaction can happen under 1. These 12 seconds are called a slot,
which generally are used to propose, valdiate and then broadcast a block. But if there's 
none to validate the block, the slot will go to waste, or empty.

Each block has a target of 15M gas, but it can vary up to 30M of gas, or double of the target size.
Needing more computing power in order to process, but with a limit cap so it doesn't overflow the network.

The blocks have this data:
- slot: the slot of the block
- proposer_index: ID of the proposer validator node
- parent_root: hash of the preceding block
- state_root: the root hash of the state object
- body: more data about the block such as:
    - randao_reveal: a value used to select the next proposer
    - ethl_data: info of the deposit contract of the proposer
    - graffiti: arbitrary data for tagging the blocks
    - proposer_slashings: list of validators to be slashed
    - attester_slashings: list of ... to be ...
    - attestations: list of attentations in favor of the block
    - deposits: list of the new deposits
    - voluntary_exits: list of validators exiting the network
    - sync_aggregate: subset of validators used to serve light clients
    - execution_payload: transactions passed from the execution client, the ones that are going to be 
      executed and then broadcasted, used for the next block parent_root.
    - execution_payload_header: summary of the transactions verified in the block


