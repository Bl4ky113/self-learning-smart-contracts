
import pytest
import logging

from brownie import *

logging.basicConfig(level=logging.FATAL)

@pytest.fixture
def hello_contract (HelloWorld, accounts):
    yield HelloWorld.deploy({ 'from': accounts[0] })

def test_say_hello (hello_contract):
    log = logging.getLogger('test_say_hello')

    result = hello_contract.sayHello()

    log.info(f'result: {result}')

    assert result == 'Hello!!!'
