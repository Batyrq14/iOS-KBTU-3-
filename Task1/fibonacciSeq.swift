import Foundation
func fibonacci(n: Int) {
    var seq: [Int] = n == 0 ? [0] : [0, 1]
    var currentNum = 2
    while currentNum < n{
        seq.append(seq[currentNum - 1] + seq[currentNum - 2])
        currentNum += 1 }
    print(seq)
}

print("Enter a number:")
if let input = readLine(), let number = Int(input) {
    print(fibonacci(n: number))
} else {
    print("Invalid input. Please enter a valid integer.")
}
