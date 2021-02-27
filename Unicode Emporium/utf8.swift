//
//  utf8.swift
//  Unicode Emporium
//

func utf8() {
    print("\nPlease enter message to decode using UTF8: ", terminator: "")
    if let input = readLine() {
        print("\nDecimal list: ", terminator: "")
        for i in input.utf8 {
            print("\(UnicodeScalar(i)): (", terminator: "")
            print(i, terminator: ") ")
        }
        
        print("\nHex list: ", terminator: "")
        for i in input.utf8 {
            print("\(UnicodeScalar(i)): (", terminator: "")
            print(String(i, radix: 16).uppercased(), terminator: ") ")
        }
        
        print("\nBinary list: ", terminator: "")
        for i in input.utf8 {
            print("\(UnicodeScalar(i)): (", terminator: "")
            print(String(i, radix: 2), terminator: ") ")
        }
        
        print()
    }
}
