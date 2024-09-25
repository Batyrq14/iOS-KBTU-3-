import Foundation

// Function to determine if a string has all unique characters
func hasUniqueCharacters(_ text: String) -> Bool {
    // Create a Set to store unique characters
    var characterSet = Set<Character>()
    
    // Iterate through each character in the string
    for character in text {
        // Check if the character is already in the set
        if characterSet.contains(character) {
            // If it is, return false as the character is not unique
            return false
        }
        // Otherwise, add the character to the set
        characterSet.insert(character)
    }
    
    // If all characters are unique, return true
    return true
}

// Example usage
print(hasUniqueCharacters("Hello")) // Output: false
print(hasUniqueCharacters("World")) // Output: true
print(hasUniqueCharacters("Swift")) // Output: true
print(hasUniqueCharacters("aAbBcC")) // Output: true
