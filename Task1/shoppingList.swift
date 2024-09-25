import Foundation

// Function to display the main menu options
func displayMenu() {
    print("\nShopping List Manager")
    print("1. Add Item")                 // Option to add an item
    print("2. Remove Item")              // Option to remove an item
    print("3. Display Shopping List")    // Option to view the current shopping list
    print("4. Exit")                    // Option to exit the application
}

// Main function to run the shopping list application
func main() {
    // Array to store shopping list items
    var shoppingList: [String] = []

    // Infinite loop to keep the application running until the user decides to exit
    while true {
        displayMenu() // Display the menu options
        print("Choose an option (1-4): ", terminator: "") // Prompt for user input
        
        // Read user input
        if let choice = readLine() {
            switch choice {
            case "1": // If user chooses to add an item
                print("Enter the item to add: ", terminator: "")
                if let item = readLine() { // Read the item name
                    shoppingList.append(item) // Add the item to the list
                    print("\"\(item)\" has been added to the shopping list.") // Confirmation message
                }
                
            case "2": // If user chooses to remove an item
                print("Enter the item to remove: ", terminator: "")
                if let item = readLine() { // Read the item name
                    // Check if the item exists in the shopping list
                    if let index = shoppingList.firstIndex(of: item) {
                        shoppingList.remove(at: index) // Remove the item
                        print("\"\(item)\" has been removed from the shopping list.") // Confirmation message
                    } else {
                        print("\"\(item)\" is not in the shopping list.") // Item not found message
                    }
                }

            case "3": // If user chooses to display the shopping list
                // Check if the shopping list is empty
                if shoppingList.isEmpty {
                    print("The shopping list is empty.") // Inform the user if there are no items
                } else {
                    print("\nCurrent Shopping List:")
                    // Iterate through the shopping list and print each item with its index
                    for (index, item) in shoppingList.enumerated() {
                        print("\(index + 1). \(item)") // Print item number and name
                    }
                }

            case "4": // If user chooses to exit
                print("Exiting the application.") // Confirmation message
                return // Exit the main function

            default: // Handle invalid input
                print("Invalid choice. Please select a valid option.") // Error message
            }
        }
    }
}

// Start the application by calling the main function
main()
