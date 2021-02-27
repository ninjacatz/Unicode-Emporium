//
//  shifter.swift
//  Unicode Emporium
//

func shift() {
    print("Please enter a message to shift: ", terminator: "")
    if let message = readLine() {
        print("\nPlease enter an amount to shift by: ", terminator: "")
        if let amount = readLine() {
            if let intAmount = Int(amount) {
                shiftUnicode(message: message, amount: intAmount)
            } else {
                print("\nNot an integer. Let's start over. ", terminator: "")
                shift()
            }
        }
    }
}

func shiftUnicode(message: String, amount: Int) {
    var result = [Character]()
    
    for i in message.utf8 {
        let shiftedInt = Int(i) + amount
        result.append(Character(UnicodeScalar(shiftedInt)!))
    }
    
    print("\nResult of shifting message: \(String(result))")
}
