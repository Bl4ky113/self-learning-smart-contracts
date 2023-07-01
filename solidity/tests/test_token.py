#!/bin/python3

import pytest
import logging
from brownie import accounts

logging.basicConfig(level=logging.FATAL);

test_person_input = (
    1234567890,
    'Martín Hernández',
    '01/13/2006'
)

test_token_input = [
    1,
    None,
    '06/01/2023',
    'New Token'
]

@pytest.fixture
def token_contract (PersonContract, accounts):
    yield PersonContract.deploy({'from': accounts[0]})

def test_create_asset (token_contract, accounts):
    print('hello')
