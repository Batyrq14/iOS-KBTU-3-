import Foundation

// Function to accept student names and their corresponding test scores
func inputStudentScores() -> [String: Double] {
    // Dictionary to store student names and their corresponding scores
    var studentScores = [String: Double]()
    
    // Loop to continuously accept student names and scores
    while true {
        // Prompt the user to enter a student name
        print("Enter student name (or type 'done' to finish):")
        let name = readLine() ?? ""
        
        // Check if the user wants to finish inputting data
        if name.lowercased() == "done" {
            break // Exit the loop if the user types 'done'
        }
        
        // Prompt for the student's score
        print("Enter score for \(name):")
        // Read the score input and attempt to convert it to Double
        if let scoreInput = readLine(), let score = Double(scoreInput) {
            // Store the student's name and score in the dictionary
            studentScores[name] = score
        } else {
            // Inform the user about invalid input
            print("Invalid score. Please enter a number.")
        }
    }
    
    // Return the dictionary containing student names and scores
    return studentScores
}

// Function to calculate the average, highest, and lowest scores
func processScores(studentScores: [String: Double]) {
    // Check if there are any scores entered
    guard !studentScores.isEmpty else {
        print("No student scores entered.")
        return // Exit if no scores are available
    }
    
    // Calculate the total score by summing all the scores in the dictionary
    let totalScore = studentScores.values.reduce(0, +)
    // Calculate the average score
    let averageScore = totalScore / Double(studentScores.count)
    
    // Determine the highest and lowest scores from the dictionary
    let highestScore = studentScores.values.max() ?? 0
    let lowestScore = studentScores.values.min() ?? 0
    
    // Display the average, highest, and lowest scores
    print("\nAverage Score: \(averageScore)")
    print("Highest Score: \(highestScore)")
    print("Lowest Score: \(lowestScore)")
    
    // Display each student's name, their score, and their status relative to the average
    print("\nStudent Scores:")
    for (name, score) in studentScores {
        // Determine if the student's score is above or below the average
        let status = score >= averageScore ? "Above Average" : "Below Average"
        // Print the student's name, score, and status
        print("\(name): \(score) - \(status)")
    }
}

// Main Program
let studentScores = inputStudentScores() // Call the input function to get student data
processScores(studentScores: studentScores) // Process and display the scores
