#!/bin/python3.9

import pytest
import brownie

import logging

logging.basicConfig(level=logging.FATAL)

person_data_test = (
    1234567890,
    'Martin Steven',
    'Hernandez Ortiz',
    '01/13/2006'
)

@pytest.fixture
def token_contract (tokenPerson, accounts):
    yield tokenPerson.deploy(*person_data_test, {'from': accounts[0]})

def test_get_person_data (token_contract):
    log = logging.getLogger('test_token_init')

    token_data_returned = token_contract.get_person_local_data()

    list_token_data = tuple(token_data_returned)
    assert list_token_data == person_data_test

    log.info(f'list_token_data: {list_token_data}')

def test_mint_token (token_contract, accounts):
    log = logging.getLogger('test_mint_token')

    token_data = (
        1,
        accounts[0].address,
        '06/01/2023',
        'Nuevo Token'
    )
    log.info(f'Token: {token_data}')

    token_contract.mint(*token_data)

    log.info(f'Token Minted!')

def test_get_token_data (token_contract, accounts):
    log = logging.getLogger('test_get_token_data')

    token_data = (
        1,
        accounts[0].address,
        '06/01/2023',
        'Nuevo Token'
    )
    log.info(f'{token_data}')

    token_data_returned = token_contract.get_token_by_id(token_data[0])

    list_token_data = tuple(token_data_returned)

    log.info(f'Token: {list_token_data}')
