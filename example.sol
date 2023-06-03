// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PersonContract is ERC721, Ownable {
    
    
    struct Person {
        uint256 identification;
        string firstName;
        string lastName;
        uint256 birthDate;
    }


    Person person;

    struct Asset {
        address smartContractAsset;
        uint256 date;
        string title;
    }

    mapping(uint256 => Asset) internal assets;


    constructor(uint256 identification, string memory firstName, string memory lastName, uint256 birthDate) ERC721("PersonIdentity", "PA") { 
        person.identification = identification;
        person.firstName = firstName;
        person.lastName = lastName;
        person.birthDate  = birthDate;
    }


    function mint(uint256 tokenId, address asset, uint256 date, string memory title ) public onlyOwner {
        _mint(msg.sender, tokenId);
        assets[tokenId].smartContractAsset = asset;
        assets[tokenId].date = date;
        assets[tokenId].title = title;
    }



}
