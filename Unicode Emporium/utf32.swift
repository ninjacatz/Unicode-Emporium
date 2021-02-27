//
//  utf32.swift
//  Unicode Emporium
//

func utf32() {
    print("\nPlease enter message to decode using UTF32: ", terminator: "")
    if let input = readLine() {
        print("\nDecimal list: ", terminator: "")
        for i in input.unicodeScalars {
            print("\(i): (", terminator: "")
            print(i.value, terminator: ") ")
        }
        
        print("\nHex list: ", terminator: "")
        for i in input.unicodeScalars {
            print("\(i): (", terminator: "")
            print(String(i.value, radix: 16).uppercased(), terminator: ") ")
        }
        
        print("\nBinary list: ", terminator: "")
        for i in input.unicodeScalars {
            print("\(i): (", terminator: "")
            print(String(i.value, radix: 2), terminator: ") ")
        }
        
        print()
    }
}
