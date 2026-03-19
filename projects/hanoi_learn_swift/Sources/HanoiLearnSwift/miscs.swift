import Foundation

// swift-format-ignore
func main_00() {
    // ------------------------------------------------
    // ### Type Conversion
    print(String(format: "%@ = %.2f (%@)" , "5.0 + 1.2"    , 5.0 + 1.2    , typ(5.0 + 1.2)))
    print(String(format: "%@ = %.2f (%@)" , "1995.0 / 4.0" , 1995.0 / 4.0 , typ(1995.0 / 4.0)))
    print(String(format: "%@ = %d (%@)"   , "1995 / 4"     , 1995 / 4     , typ(1995 / 4)))
    print(String(format: "%@ = %d (%@)"   , "1995 % 4"     , 1995 % 4     , typ(1995 % 4)))

}

func main_01() {
    // ------------------------------------------------
    // ### Rune
    let unicodeChar: Character = "🌳"  // Unicode character
    print("\(unicodeChar) (U+\(String(unicodeChar.unicodeScalars.first!.value, radix: 16)))")

}

func main_02() {
    // ------------------------------------------------
    // ### Single vs Double Quotes
    print("'test' -> \(String(describing: "compilation error"))")
}

func miscs() {

    main_00()
    main_01()
    main_02()

    let hello =
        "Hello"
        .lowercased()

    print(hello)  // Output: hello

    let (a, b): (Int, Int) = (1, 2)
    print(a, b)

    var letters0: [String] = []
    print(letters0)

    var letters = ["a", "b", "c"]
    letters[1] = "d"
    letters.append("e")
    print(letters)

    var lmap0: [String: Int] = [:]
    print(lmap0)

    var lmap = [
        "a": 97,
        "b": 98,
        "c": 99,
    ]
    lmap["d"] = 100
    print(lmap)

    

}
