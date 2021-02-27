//
//  activityselector.swift
//  Unicode Emporium
//

func activitySelector() -> Int {
    print("\nPlease enter an option 1-6 (or 0 to exit the emporium):", terminator: " ")
    if let userInput = readLine() {
        if let intUserInput = Int(userInput) {
            if intUserInput >= 0 && intUserInput <= 6 {
                return intUserInput
            } else {
                print("\nInput is not between 1-6.")
                activitySelector()
            }
        } else {
            print("\nInput is not an integer.")
            activitySelector()
        }
    }
    
    return 0
}
