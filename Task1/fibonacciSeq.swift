import Foundation
func fibonacci(_ n: Int) -> [Int] {
    // Initialize the Fibonacci sequence. If n is 0, start with [0], otherwise start with [0, 1]
    var seq: [Int] = n == 0 ? [0] : [0, 1]
    // Set the current number index to 2 (since we already have the first two numbers)
    var currentNum = 2
    // Continue adding numbers to the sequence until we reach 'n'
    while currentNum < n {
        // Append the next Fibonacci number, which is the sum of the two previous numbers
        seq.append(seq[currentNum - 1] + seq[currentNum - 2])
        
        // Increment the index to process the next number
        currentNum += 1
    }
    
    // Return the complete Fibonacci sequence
    return seq
}


print("Enter a number:")
if let input = readLine(), let number = Int(input) {
    print(fibonacci(number))
} else {
    print("Invalid input. Please enter a valid integer.")
}
