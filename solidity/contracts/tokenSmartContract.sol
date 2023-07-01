pragma solidity ^0.8.0;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract PersonContract is IERC721, AccessControl {
  bytes32 public constant ORG_ROLE = keccak256("ORG_ROLE");

  struct Person {
    address tokenOwner;
    uint256 id;
    string name;
    string birthDate;
  }
  
  struct Asset {
    address smartContractAsset;
    string date;
    string name;
  }

  mapping(uint256 => Person) internal people;
  mapping(uint256 => Asset) internal assets;

  constructor (address orgAddress) ERC721("IdentidadDigital", "ID") {
    _grantRole(ORG_ROLE, orgAddress);
  }

  function createPerson (address _personWallet, uint256 _document, string memory _name, string memory _date)
  public {
    require(hasRole(ORG_ROLE, msg.sender), 'Caller is not a valid Organization');


  }
    

  function mintToken (uint256 _tokenId, address _asset, string memory _date, string memory _name) public onlyOwner {
    _mint(msg.sender, _tokenId);
    
    assets[_tokenId].smartContractAsset = _asset;
    assets[_tokenId].date = _date;
    assets[_tokenId].name = _name;
  }

  function getTokenData (uint256 _tokenId) public returns (Asset memory){
    return assets[_tokenId];
  }

  function getPersonData () public returns (Person memory) {
    return person;
  }
}
