
from fizzBuzz import fizzBuzz
import pytest

# to run 
# pytest -m fizzbuzz test_fizzBuzz_marker.py 
@pytest.mark.num
def test_num():
    assert fizzBuzz(1) == 1
    assert fizzBuzz(2) == 2

@pytest.mark.buzz
def test_buzz():
    assert fizzBuzz(5) == "Buzz"

@pytest.mark.fizz
def test_fizz():
    assert fizzBuzz(6) == "Fizz"

@pytest.mark.fizzbuzz
def test_fizzbuzz():
    assert fizzBuzz(30) == "FizzBuzz"

if __name__ == "__main__":
    test_num()
    test_fizz()
    test_buzz()
    test_fizzbuzz()
