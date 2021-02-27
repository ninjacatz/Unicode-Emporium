//
//  circularshifter.swift
//  Unicode Emporium
//

import Foundation

func circularShift() {
    print("Please enter a message to shift: ", terminator: "")
    if let message = readLine() {
        if message == message.components(separatedBy: CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz").inverted).joined() {
            print("\nPlease enter an amount to shift by: ", terminator: "")
            if let amount = readLine() {
                if let intAmount = Int(amount) {
                    circularShiftUnicode(message: message, amount: intAmount)
                } else {
                    print("\nNot an integer. Let's start over. ", terminator: "")
                    circularShift()
                }
            }
        } else {
            print("\nMessage contains more than only lowercase alphabetics. ", terminator: "")
            circularShift()
        }
    }
}

func circularShiftUnicode(message: String, amount: Int) {
    var result = [Character]()
    
    for i in message.utf8 {
        let shiftedInt = Int(i) + amount
        
        if shiftedInt > 122 {
            result.append(Character(UnicodeScalar(shiftedInt - 26)!))
        } else if shiftedInt < 97 {
            result.append(Character(UnicodeScalar(shiftedInt + 26)!))
        } else {
            result.append(Character(UnicodeScalar(shiftedInt)!))
        }
    }
    
    print("\nResult of shifting message: \(String(result))")
}
