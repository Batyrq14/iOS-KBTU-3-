import Foundation

// Function to check if a given string is a palindrome
func isPalindrome(_ text: String) -> Bool {
    // Create a character set that includes letters and numbers
    let allowedCharacterSet = CharacterSet.alphanumerics
    // Filter the input string to include only allowed characters and make it lowercase
    let filteredText = text.unicodeScalars.filter { allowedCharacterSet.contains($0) }
                                           .map { Character($0) }
                                           .map { $0.lowercased() }
                                           .joined()
    
    // Compare the filtered text with its reversed version
    return filteredText == String(filteredText.reversed())
}

// Example usage
print(isPalindrome("A man, a plan, a canal: Panama")) // Output: true
print(isPalindrome("race a car"))                       // Output: false
print(isPalindrome("No 'x' in Nixon"))                 // Output: true
