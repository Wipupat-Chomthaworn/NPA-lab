def test_fizzbuzz():
    assert fizzBuzz(1) == 1
    assert fizzBuzz(2) == 2
    assert fizzBuzz(3) == "Fizz"
    assert fizzBuzz(4) == 4
    assert fizzBuzz(5) == "Buzz"
    assert fizzBuzz(6) == "Fizz"
    assert fizzBuzz(7) == 7
    assert fizzBuzz(8) == 8
    assert fizzBuzz(9) == "Fizz"


    assert fizzBuzz(30) == "FizzBuzz"




    
    print("TestPass")


def fizzBuzz(num):
    if (num % 3 == 0 and num % 5 == 0):
        return "FizzBuzz"
    elif (num %3 == 0):
        return "Fizz"
    elif (num % 5 ==0):
        return "Buzz"

    return num

test_fizzbuzz()
print("Process", "Done!")