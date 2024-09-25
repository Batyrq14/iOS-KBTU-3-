// Problem 1
for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 { // Checking the num is divisible by 3 and 5 , if yes prints "FizzBuzz"
        print("FizzBuzz")
    } else if number % 3 == 0 { // Checking the num is divisible by 3, if yes, prints "Fizz"
        print("Fizz")
    } else if number % 5 == 0 { // Checking the num is divisible by 5, if yes prints "Buzz"
        print("Buzz")
    } else { //
        print(number)
    }
}
