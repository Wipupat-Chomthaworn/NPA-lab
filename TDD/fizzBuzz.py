def fizzBuzz(num):
    if (num % 3 == 0 and num % 5 == 0):
        return "FizzBuzz"
    elif (num %3 == 0):
        return "Fizz"
    elif (num % 5 ==0):
        return "Buzz"

    return num

if __name__ == "__main__":
    num = int(input())
    fizzBuzz(num)

print("Process", "Done!")