def test_fizzbuzz():
    assert fizzBuzz(1) == 1
    assert fizzBuzz(2) == 2
    assert fizzBuzz(3) == "Fizz"
    assert fizzBuzz(4) == 4
    assert fizzBuzz(5) == "Buzz"
    assert fizzBuzz(6) == "Fizz"
    
    print("TestPass")


def fizzBuzz(num):
    if (num ==3 or num ==6):
        return "Fizz"
    elif (num % 5 ==0):
        return "Buzz"

    return num

test_fizzbuzz()
print("Process", "Done!")