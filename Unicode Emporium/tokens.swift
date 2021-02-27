//
//  tokens.swift
//  Unicode Emporium
//

class Tokens {
    var tokens: Int
    
    init(withStartingAmount tokens: Int) {
        self.tokens = tokens
    }
    
    func addTokens(byAmount amount: Int) {
        tokens += amount
    }
    
    func removeTokens(byAmount amount: Int) -> Bool {
        if tokens >= amount {
            tokens -= amount
            return true
        } else {
            print("\nNot enough tokens to do that, but please don't hesitate to buy some more!")
            return false
        }
    }
    
    func buyTokens() {
        print("Now, how many would you like to buy? Please enter: ", terminator: "")
        if let input = readLine() {
            if let intInput = Int(input) {
                addTokens(byAmount: intInput)
                print("\nI see you don't have any money... No big deal, we'll just take part of your soul! Your life has been shortened a bit. Only by about \(intInput * 7) days, though!\n")
            } else {
                print("\nNot an integer value. ", terminator: "")
                buyTokens()
            }
        }
    }
}
