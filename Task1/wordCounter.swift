import Foundation

// Function to count the frequency of each word in a sentence
func wordFrequencyCounter() {
    // Prompt the user to enter a sentence
    print("Please enter a sentence:")
    
    // Read the user input
    guard let input = readLine() else {
        print("Invalid input.")
        return
    }
    
    // Dictionary to store word-frequency pairs
    var wordFrequency: [String: Int] = [:]
    
    // Remove punctuation and convert the sentence to lowercase
    let cleanedInput = input.lowercased()
        .components(separatedBy: CharacterSet.punctuationCharacters) // Split by punctuation
        .joined(separator: " ") // Join back into a string
    
    // Split the cleaned input into words
    let words = cleanedInput.split(separator: " ").map { String($0) } // Convert Substring to String
    
    // Loop through each word to count frequency
    for word in words {
        // If the word already exists in the dictionary, increment its count
        if let count = wordFrequency[word] {
            wordFrequency[word] = count + 1
        } else {
            // Otherwise, add the word with a count of 1
            wordFrequency[word] = 1
        }
    }
    
    // Display the words and their corresponding frequencies
    print("\nWord Frequencies:")
    for (word, frequency) in wordFrequency {
        print("'\(word)': \(frequency)")
    }
}

// Start the program
wordFrequencyCounter()
