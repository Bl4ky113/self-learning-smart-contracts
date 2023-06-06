# Smart Contracts. General
Start: 05/22/2023
End: 05/25/2023

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
- Accounts --- DONE
- Transactions --- DONE
- Blocks --- DONE
- Ethereum Virtual Machine (EVM) --- DONE

Halted, If I want or need more research.
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
    - execution_payload: transactions passed from the execution client, the ones that are going to be executed and then broadcasted, used for the next block parent_root.
    - execution_payload_header: summary of the transactions verified in the block

## Ethereum Virtual Machine

The Ethereum Virutal Machine and the Ethereum protocol are just like the waves of the ocean.
Only posible by the massive and great networking of a system that shares a common purpose.
The purpose of Ethereum beeing to create a descentralized blockchain network.

It could be interperted the Ethereum blockchain as a descentralized ledger. But since 
Ethereum has and uses Smart Contracts, we could say that The Ethereum Blockchain Network is a 
descentralized state machine. Which can holds accounts, balances and machine states, which can change from 
block to block, depending on the code written on the machine, or smart contract.

This big state of the Ethereum could be represented as a mathematical function.

Y(S, T) = S'

From a S: old_state given and a new batch of T: valid_transactions, 
using the Ethereum State Function Y(), we get a S': new_state for the Ethereum Network.

We can run a EVM using different executions clients made on the long run of the 9+ years of Ethereum,
these have been made by the specifications on the Ethereum Yelllow Paper, some are:

- Py-EVM: Python
- evmone: C++
- ethereumjs-vm: JavaScript
- eEVM: C++

I could start developing from here, but I could read a little more!
Nah, time isn't infinite. Yet.

## Smart Contract Languages

The main two are:
- Solidity
    - C ++ Syntax based
    - OOP oriented
    - Inheritance from other contracts
    - Libraries
    - Complex user types
    - Statically typed
    - Strong Dev Community
- Vyper
    - Pythonic syntax
    - Strong typed
    - Small and understandable compiler code
    - Efficient bytecode generation
    - Doesn't support a lot of stuff, in order to make the smart contract more safe and easier to audit

There's also Yul and its extension Yul+
Which connects directly to the EVM. But it's more advanced.
So... Later on.

## Smart Contract Anatomy

### Data

The hard or soft coded data that our smart contract will use can define how efficient it will be 
on the moment its compiled.

We can store it on:
- Storage: persistent, declarated data, the types varies on the language. Could be expensive
- Memory: data only used when the smart contract is used. More cheaper
- Env Variables: global general data from the blockchain state, itself or the transaction

### Functions

They are called and are what make or creates the funcitonality.
They can be external, from another smart contract or from an account.
Or internal, just like any other method of an object in OOP.

There's also public and private functions, which restricts the type of call that could be 
made for the function.

Views functions are just Getters, which only return a value type and nothing more, only seeing.
'Can't a straight man just see and watch what's available on Grinder?'

Constructors are just the init of the Smart Contract. Set and define state variables. 
Only when it's first deployed(?, and that's everytime it's called or what?

Some have builtin functions, like:
- send(address): send ether to an address.

Writing the functions are just using the defined special word for the 
language, and define it's:
- name
- paramters
- parameter types
- if external or internal
- if pure, view, or playable
- and return type, if any

### Events and Logs

Events could be triggerd and handled by your smart contract, and then write a log. 
So later on a frontend application can read them.

## Smart Contract Libraries 

They are reusable behaviours for our smart contracts.
They are generally called from the node_modules folder,
carefull using a different version of the language that you are using 
and the one of the library.

## Smart Contract Testing

Halted for later, since I haven't even developed my first hello world

## Smart Contract Compiling

Once we have our Smart contract done, the compiler will turn it into bytecode. 
And create an Application Binary Interface. Which is a json that describes the deployed contract 
and its functions. So it can be used by a js client library.
Making it easier to bridge the gap between web 2 and web 3.

## Smart Contract Deploy

Now we need some:
- gas money, ether
- the smart contract bytecode
- a deployment script or plugin
- and access to a Ethereum Node, public or private.

It doesn't specify how to, but there's some tutorials about it. 
So... I'll have to check that later.

But once uploaded, verified and validated, added and validaded on a block, and 
that block added to the Ethereum Blockchain Network. The smart contract will be 
available for any account in that Network.

# Vyper

Start: 05/25/2023
End: 06/04/2023

Sessions:
- 05/25/2023
- 05/26/2023
- 05/27/2023
- 06/02/2023
- 06/03/2023
- 06/04/2023 Happy Birth Day MOM!

The objective is to make a smart contract that has getters and setters for:
- 4 different names --- init only
- id --- init only
- birth date --- init onlt
- contact
- direction
- cellphone
- city
- email

## Install 

We can install the python library from pip, with it we can compile our .vy files in to 
smart contracts.

But them, we could only compile them to just byte code.
Soo, I can't or I'm not willing to connect myself to ANY ethereum blockchain. Or any blockchain for that matter.

So How do we Really, REALLY INSTALL THIS

## THE REAL INSTALL

So now, we have the library, great. We are going to need a list of stuff first.

- Python 3.9
We can install it just from a normal place, carefull with the version. IT WILL NOT WORK IF YOU ARE NOT USING 3.9!
If you already have installed python in your PC. You can use pyenv to install it, which.

- Pyenv and Pyenv-virtualenv
Pyenv will just let us install and exec a different python version for our projects, but it wont 
separate them, making a hell for installing dependencies, which we need to do.
So we are going to use pyenv-virtualenv as well.

These two need to add some eval in your .bashrc, otherwise. IT WILL NOT WORK.

Then you just create a venv from pyenv virutalenv, and use it just like a normal venv, just that you are 
going to activate by using:

$ pyenv activate venv

Now we should have Python 3.9

- Vyper, eth-Brownie
Now we only install Vyper, right? NO.
Vyper will let us compile our files, but not use them.
So we can use a testing library of Ethereum smart contracts like eth-brownie.
Which is the one who required Python 3.9 by the way...

After installing it, we create an empty folder and run 

$ brownie init

Which will create empty folders for our .vy, .py scripts and some stuff like dependencies and such things.

But wait, eth-brownie just runs the tests. So where are we going to do the transaction of the smart contract?
That where ganache enters.

- Ganache
Ganache promotes itself as an One Click Blockchain, ment por personal propourses such as testing and developing for 
the Ethereum Blockchain.

You can download it from the AUR, its ganache-cli. Or Idk, I probably wont use any other OS than Arch.
Or even compile my own packages. But there's support for windows, mac and who knows what.

Then, we could just run the tests. But that's all, only tests... They are good, by passing some parameters we can 
see how much gas fees does a contract or something required, I don't remember pretty well.

So, we need more context, since the only context that we are given on the tests are only then an error ocurrs.

Needing...

- pytest
eth-brownie implements pytest for running it's tests. So we can create an config file for this 
on anywhere on the project folder called pytest.ini

Where we can define if we can show logs to the cli and which levels: beeing
1. NOTSET - 0
2. DEBUG - 10
3. INFO - 20
4. WARNING - 30
5. ERROR - 40
6. FATAL - 50

Then, in the test case. We import logging and set in the basicConfig the level of the logging aswell
And in each test case where we need to log, we can create a log variable which is going to be 
the logger of the test. So if we are running multiple tests we can differeciante them with timestamps and 
file paths.

Then call the level of the log level selected, and pass a msg. Preferably an f"string", because it doesn't have an
infinite num of parameters* like print.

AND THAT'S IT.
Now you can develop Vyper Smart Contracts from your own machine without any connection to the internet. 
Look without network capabilities, and music.

SO a list of what you need to install

- Pyenv
    - Pacman/extra
- Pyenv-virtualenv, ganache-cli
    - Pacman/AUR
- Python 3.9
    - Pyenv
- Vyper, eth-brownie, pytest
    - pip

## The after Math

Now, we could develop in Vyper. 
It technically has the same structur as any smart contact.
But it's getting extreamly hard to develop this thing
and keep up with my team demands, soo... I'll have to ditch 
Vyper for Solidity, since the begining it was only a try, test and lab stuff

That also goes for Yul and Yul+ in Ethereum. 
Beaker and Teal could wait a little more, but eventualy would end in the 
same part...

So, lets write down everything that I know!

## Usage of Brownie

Brownie is a testing lib, ok.

From there we can run and develop smart contracts locally. Using it
my main use was for vyper, but I think that it could also be used for Solidity.

Anyway, the main usage are tests. And develop the smart contracts using 
Test driven Development. 

First we need to initilize brownie, the only thing that it does is create a system of 
folders where it stores the libs, smart contracts, tests files, and more.
It need to be a clear and empty folder, otherwise it'll bitch about it.

In order to run a smart contract, we just have to drop it in the contracts folder. 
Then in the tests folder we will need to create a pytest file.

We import pytest, and logging for logging, duh.

We will get the smart contract and its functions by creating a function with 
@pytest.fixture decorator, and passing in the First parameter the fileName of the 
smart contract in ./contracts/ It is case sensitive, btw.
We should pass another parameter called accounts, which will be a list of generated accounts in the test network.
It will start the contract, passing the init or constructor data by using the method deploy of the smart contract
parameter, it also has a dict for options such as 'from', which declares who is using, or in this case initliazing, the 
smart contract passing one of the accounts in the list accounts.
Then it will yield the return of deploy, for later usage in the tests.

For each test, it will be a function, for simple unit tests.
It will need to start with 'test_' and then a proper name for the test, otherwise
pytest will not detect it and won't execute it.

In the unit tests we can call the smart contract by calling the function with the @pytest.fixture decorator, and 
yielding the return of the deploy of the smart contract, it will let us use the same instance of smart contract with 
each test(?) Not that sure, but heck. If anything, just make a normal function and divide the tests in modules if you need to 
do a sequencial type of test, first this, then that, then ... You get it.

That's the basic usage of Brownie,
If I need to. Or want to.

I'll research how to connect it to another local networks such as tesera types or besu.
And not use the network of ganache.

Also see if I can run Solidity with Brownie, which is the most likely.

## Vyper 

This is the only things that I've learnt about Vyper, since I don't want to 
leave it all just in the air, since I 'MUSN'T' learn Vyper but the bloated solidity

The most important thing to understand how to program with Vyper is, 
All* of Python Synxtax works in Vyper. But Vyper Syntax doesn't works in Python

With this out of the way, Almost everything in Vyper is Mostly behaviour and usage changes from
Python. I don't know with which version of Python is Vyper completly compliant, but meh.

The most important changes are:

### Version usage of Vyper

We HAVE to declare which version of Vyper are we going to use using an npm version type.

### Self context

The hole Vyper file and contract refers it self with the self variable. The biggest change is 
that the whole file is inside a Python Class.

From there everything looks and 'feels' more like a Pythonic way to do everything.

### Private By Default

Most of the Variables, it doesn't matter if they are temporal or real storage. 
are going to be private by default, to change it, we need to pass the variable type for 
the public function

For the methods of the smart contract we are going to add decorators for each type.
And functionality

### Interfaces

I don't know what are they exactly, I haven't studied them. But if I had to bet, They would be the 
Class equivalence of Python

### Special Global and Local Variables

These are variables available for free* (without gas usage) in the smart contract, 
such as the msg obj. Which is the general data of the wallet that called the smart contract.

And other data which isn't trully important such as data of the network, block of deployment and other stuff.

### Data Types: Simple

They use more real types of data, unlike python, such as uint2^power, string[limit], bool, address which is a 
Signed 0x something bin data.

And other types like decimals, and stuff. Generally the general types of low level typed languages

### Data Types: Complex

There's Structs which are a way to create a Model, Interface, Class, Or Data of an object. 
It behaves like a JavaScript Object, it's declared like a Python class with only parameters and nothing else.



Now With all of this, Vyper is Gone for Good (?) // Citacion Needed

:c

# Solidity

Start: 06/05/2023
End:

Sessions: 
- 06/05/2023

Yeah, I know...

## Install

You know, it doesn't work locally. It doesn't work. PERIOD.

There's available a coc-solidity for nvim, that's nice.

So... There's a bin and program for compiling solidity contracts, 
in the aur, there's the bin, git version and compile.
I went with the bin obviously.

### Brownie Comeback

also Brownie works with solidity >=0.4.22. Nice
and looks like I don't have to do a lot of stuff in order to run it, 
just create another working folder.

There's a bunch of special configuration for solidity. 
Mainly in the compiler config file, in the file ./brownie-config.yaml

There's a lot of options but the ones that matter are in 

compiler:
    evm_version: null
    solc:
        version: null
        optimizer:
            enabled: true
            runs: 200
        remappings: null

Where we can define the versions of the sol compiler and EVM
configure the optimizer and even make remappings for our dependencies.

There's also some options for the optimizer, but I don't think that I'm going
there yet.

There's a functionality for using and running scripts from the brownie console, but I don't care about it.

But, you only have to

$ brownie run 'script' \[function\]

Also there's an way to use accounts, Tokens and other stuff from the main file, 
just by importing them from brownie

from brownie import Token, accounts

From there, it's just like we've learnt.

### Brownie Packet Manager

Since Solidity accepts imports and stuff, we can 
use the packet manager of Brownie to install libraries.

It supports libraries from ethPM and Github.

we have to:

$ brownie pm install ORG/REPOSITORY@VERSION

if we want to download from ethPM 

$ brownie pm install ethpm://CONTRACT:CHAIN_ID/PACKAGE@VERSION

Then we can list the packets with:

$ brownie pm list

And if we want to clone one package in order to see and use it from 
a custom folder, or the current one, we can do it with:

$ brownie pm clone PACKAGE

In order to use them in our contracts, we use the import function, 
passing the ORG, / package, @version, and then the path to the file 
of the library which we are going to use.
Just like the install the first part.

For using them in the tests. We can pass the pm parameter to the test function and then 
pass the string of the org, package, version and then access the files like an object.

If we are going to share our testing suit we should declare the libraries installed in our config file
like a list in dependencies.

Then, before compiling a project, Brownie will install its dependencies.

### Brownie GUI
There's a GUI. Cringe

### Brownie Core: Accounts

These are local accounts made inside ganache. 

We can see it's methods and attributes by using dir(). But they have:
- address
- balance
- estimate_gas()
- deploy()
- transfer()

which transfer is the one we should use the most, by passing another account address, and then
a string with a amount of wei to send.

The balance is in Weis.

If we need to create another account, we use the method add of accounts. 
If we want to, we can pass a custom private key.

And we can force creating accounts with a custom address by using the method at() and passing the 
kwarg force=True


