import Foundation

// Function for addition
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

// Function for subtraction
func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

// Function for multiplication
func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

// Function for division
func divide(_ a: Double, _ b: Double) -> Double? {
    if b == 0 {
        return nil // Return nil if attempting to divide by zero
    }
    return a / b
}

// Main calculator function
func calculator() {
    while true {
        // Prompt the user to enter two numbers
        print("Enter the first number:")
        guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
            print("Invalid input. Please enter a valid number.")
            continue
        }
        
        print("Enter the second number:")
        guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
            print("Invalid input. Please enter a valid number.")
            continue
        }
        
        // Ask the user to choose an operation
        print("Choose an operation (+, -, *, /) or type 'exit' to quit:")
        guard let operation = readLine() else {
            print("Invalid operation.")
            continue
        }
        
        // Check if the user wants to exit
        if operation.lowercased() == "exit" {
            print("Exiting the calculator.")
            break
        }
        
        // Perform the calculation based on the user's choice
        var result: Double?
        switch operation {
        case "+":
            result = add(firstNumber, secondNumber)
        case "-":
            result = subtract(firstNumber, secondNumber)
        case "*":
            result = multiply(firstNumber, secondNumber)
        case "/":
            result = divide(firstNumber, secondNumber)
            if result == nil {
                print("Error: Division by zero is not allowed.")
                continue
            }
        default:
            print("Invalid operation. Please choose +, -, *, or /.")
            continue
        }
        
        // Display the result
        if let result = result {
            print("Result: \(result)")
        }
    }
}

// Start the calculator program
calculator()
