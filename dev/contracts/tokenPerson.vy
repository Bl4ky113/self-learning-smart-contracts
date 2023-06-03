# @version ^0.3.7

# Person Data
struct PersonData:
  id: uint256
  first_name: String[128]
  last_name: String[128]
  birth_date: String[32]

struct TokenData:
  smart_contract: address
  issue_date: String[32]
  name: String[128]

people: HashMap[address, PersonData]
tokens: HashMap[uint256, TokenData]

# owner part of OpenZeppelin
owner: address

@external
def __init__ (_id: uint256, _first_name: String[128], _last_name: String[128], _birth_date: String[32]):
  self.owner = msg.sender

  self.people[msg.sender].id = _id
  self.people[msg.sender].first_name = _first_name
  self.people[msg.sender].last_name = _last_name
  self.people[msg.sender].birth_date = _birth_date

@external
def mint (_token_id: uint256, _asset: address, _date: String[32], _title: String[128]):
  assert msg.sender == self.owner

  self.tokens[_token_id].smart_contract = _asset
  self.tokens[_token_id].issue_date = _date
  self.tokens[_token_id].name = _title

# @internal
# def create_token (_token_id: uint256, _asset: address, _date: String[128], _title: String[128]):

@view
@external
def get_person_local_data () -> PersonData:
  return self.people[msg.sender]

@view
@external
def get_token_by_id (_token_id: uint256) -> TokenData:
  return self.tokens[_token_id]
