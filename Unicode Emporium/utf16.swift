//
//  utf16.swift
//  Unicode Emporium
//

import Foundation

func utf16() {
    print("\nPlease enter message to decode using UTF16: ", terminator: "")
    if let input = readLine() {
        print("\nDecimal list: ", terminator: "")
        for i in input.utf16 {
            print("\(UnicodeScalar(i)!): (", terminator: "")
            print(i, terminator: ") ")
        }
        
        print("\nHex list: ", terminator: "")
        for i in input.utf16 {
            print("\(UnicodeScalar(i)!): (", terminator: "")
            print(String(i, radix: 16).uppercased(), terminator: ") ")
        }
        
        print("\nBinary list: ", terminator: "")
        for i in input.utf16 {
            print("\(UnicodeScalar(i)!): (", terminator: "")
            print(String(i, radix: 2), terminator: ") ")
        }
        
        print()
    }
}

