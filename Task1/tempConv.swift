import Foundation

// Functions to perform the temperature conversions
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
    return (fahrenheit + 459.67) * 5/9
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return kelvin * 9/5 - 459.67
}

// Main function to prompt user for input and display conversions
func temperatureConverter() {
    print("Enter the temperature value:")
    guard let input = readLine(), let tempValue = Double(input) else {
        print("Invalid input. Please enter a numeric value.")
        return
    }

    print("Enter the unit (C for Celsius, F for Fahrenheit, K for Kelvin):")
    guard let unit = readLine()?.uppercased() else {
        print("Invalid input. Please enter a valid unit (C, F, K).")
        return
    }

    switch unit {
    case "C":
        let fahrenheit = celsiusToFahrenheit(tempValue)
        let kelvin = celsiusToKelvin(tempValue)
        print("\(tempValue)°C is equal to \(fahrenheit)°F and \(kelvin)K")
        
    case "F":
        let celsius = fahrenheitToCelsius(tempValue)
        let kelvin = fahrenheitToKelvin(tempValue)
        print("\(tempValue)°F is equal to \(celsius)°C and \(kelvin)K")
        
    case "K":
        let celsius = kelvinToCelsius(tempValue)
        let fahrenheit = kelvinToFahrenheit(tempValue)
        print("\(tempValue)K is equal to \(celsius)°C and \(fahrenheit)°F")
        
    default:
        print("Invalid unit. Please enter C, F, or K.")
    }
}

// Calling func
temperatureConverter()
