def test_fizzbuzz():
    assert fizzBuzz(1) == 1
    assert fizzBuzz(2) == 2


def fizzBuzz(i):
    if (i %3 == 0):
        return "fizz"
    return 1

test_fizzbuzz()
print("Process", "Done!")