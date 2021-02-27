//
//  main.swift
//  Unicode Emporium
//

print("Come one, come all! And WELCOME to the...\n\nU N I C O D E   E M P O R I U M\n\nBoy do we have some great unicode fun for you to explore! But not so fast! There's just one thing to remember. You'll need to buy some tokens before you can do any of the activities. As you may see soon, activities cost a certain amount of tokens, and as of now you have none!\n")

let userTokens = Tokens(withStartingAmount: 0)
var programRunning = true

while programRunning == true {
    print("Press enter to continue...", terminator: "")
    if let _ = readLine() {
        print("\n|Unicode Emporium Menu| (Current Tokens: \(userTokens.tokens))")
        mainMenu()
        let input = activitySelector()
        switch input {
        case 0:
            programRunning = false
        case 1:
            if userTokens.removeTokens(byAmount: 5) == true {
                utf32()
            }
        case 2:
            if userTokens.removeTokens(byAmount: 5) == true {
                utf16()
            }
        case 3:
            if userTokens.removeTokens(byAmount: 5) == true {
                utf8()
            }
        case 4:
            if userTokens.removeTokens(byAmount: 10) == true {
                print()
                shift()
            }
        case 5:
            if userTokens.removeTokens(byAmount: 15) == true {
                print()
                circularShift()
            }
        case 6:
            print("\nGreat! So you'd like to buy more tokens for more unicode fun! ", terminator: "")
            userTokens.buyTokens()
        default:
            //required for switch to work, but functionally useless
            print("\nSomehow you got here... You aren't supposed to be here.")
        }
    }
}
