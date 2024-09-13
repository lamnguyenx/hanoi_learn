import Foundation

func typ<T>(_ value: T) -> String {
    String(describing: T.self)
}

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

func mainx() {

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

    // conditional
    let x = 10
    if x > 5 {
        print("x > 5")
    } else if x == 5 {
        print("x = 5")
    } else {
        print("x < 5")
    }

    let y = 10
    switch y {
    case let value where value > 5:
        print("y > 5")
    case 5:
        print("y = 5")
    default:
        print("y < 5")
    }

    // cond with pattern matching
    let numStr = "123"
    switch numStr {
    case "0":
        print("0")

    case let s where s.contains("1"):
        print("1 in \(s)")

    case let s where s.contains("2"):
        print("2 in \(s)")

    case let s where s.contains("3"):
        print("3 in \(s)")

    default:
        print("not now")
    }

    // cond. expr.

    let s1 = 4
    // swift-format-ignore
    let g1 = if s1 > 9 { "A" }
    else if s1 > 8 { "B" }
    else if s1 > 7 { "C" }
    else { "?" }
    print(g1)

    let s2 = 4
    // swift-format-ignore
    let g2 = s2 > 9 ? "A"
        : s2 > 8 ? "B"
        : s2 > 7 ? "C"
        : "?"

    // optional
    var op_var_01: Int? = 5
    var op_var_02: Int? = nil

    print(op_var_01)
    print(op_var_02)

    // for
    let numDict = [
        "prime": [2, 3, 5, 7, 11],
        "fibon": [1, 1, 2, 3, 5],
        "squar": [1, 4, 9, 16],
    ]
    for (ntype, Nums) in numDict {
        for num in Nums {
            print(ntype, num)
        }
    }

    for i in 0..<5 {
        print(i)
    }

    for i in stride(from: 10, to: 6, by: -2) {
        print(i)
    }

    // while loop
    var count = 0
    while true {
        count += 1
        if count == 5 {
            break
        }
    }
    print("count: \(count)")

    // repeat loop
    var count2 = 0

    repeat {
        count2 += 1
    } while count2 < 5

    print("count: \(count2)")

    print("// type casting")

    let tc_1_1_1 = Int(10.5)
    // !! let tc_1_1_2 = 10.5 as Int

    let tc_1_2_1 = Float(10)
    let tc_1_2_2 = 10 as Float

    // -> cant use "as" for downcasting

    let tc_2_1: Int? = Int("hello")
    let tc_2_2: Int? = "hello" as? Int

    let break_line

    = 1 + 2 + 3 + 4

    print(break_line)

    print(tc_2_1 as Any)  // nill
    print(tc_2_2 as Any)  // nill

    func f1(s1: String, s2: String) -> Bool {
        return s1.count > s2.count
    }

    let f1_r1 = f1(s1: "hello", s2: "nobita")
    print(f1_r1)

    func f2(num: Float) -> (Int, Float) {

        let num_i = Int(num)
        let num_f = num - Float(num_i)
        return (num_i, num_f)
    }
    let f2_r2 = f2(num: 6.9)
    let (f2_r2_i, f2_r2_f) = f2_r2
    print(f2_r2_i, f2_r2_f)

    func f3(x: Int, y: Int, z: Int) -> Int {

        func sum_yz(y: Int, z: Int) -> Int {
            return y + z
        }

        return x + sum_yz(y: y, z: z)
    }

    let f3_r = f3(x: 1, y: 3, z: 7)
    print(f3_r)

    // closure / lambda
    let f4: (Int, Int) -> Int = { x, y in x + y }
    let f4_r = f4(3, 5)
    print(f4_r)

    let f5: (Int, Int) -> Int = { x, y in
        let z = 10
        return x + y + z
    }
    let f5_r = f5(3, 5)
    print(f5_r)

    // Functions are a first-class type
    func f6_1(name: String) -> Int {
        return name.count
    }

    // - Assigning function to a variable
    let f6_2 = f6_1
    let f6_2_r = f6_2("rick")

    // - Passing function as an argument
    func f6_3(

        fx: (String) -> Int,
        name: String

    ) -> Int {

        return fx(name)
    }

    let f6_3_r = f6_3(
        fx: f6_1,
        name: "morty"
    )

    // - Print results
    print(f6_2_r)  // Output: 4
    print(f6_3_r)  // Output: 5

    // simple class
    class EPower0 {
        var U: Double
        var I: Double
        var brand: String
        var year: Int
        var leap: Bool

        init(U: Double, I: Double) {

            self.U = U
            self.I = I

            self.brand = "GE"
            self.year = 1995

            let div = 1995 % 4
            self.leap = div == 0
        }

        func getWatt() -> Double {
            return U * I
        }
    }

    let EP0: EPower0 = EPower0(U: 7, I: 2)
    EP0.brand = "NVIDIA"

    print(EP0.brand)
    print(EP0.getWatt())

    class EPower1: EPower0 {
        var tz: String

        override init(U: Double, I: Double) {

            self.tz = "GMT+7"
            super.init(U: U, I: I)
        }

        func getResistance() -> Double {
            return U / I
        }
    }

    let EP1 = EPower1(U: 7, I: 2)

    print(EP1.brand)
    print(EP1.getWatt())
    print(EP1.getResistance())

    class HasStaticVar {
        static var name = "(1)"
    }

    let HSV = HasStaticVar()

    // - via class
    // Access via class
    print(HasStaticVar.name)  // (1)

    // Modify via class
    HasStaticVar.name += "(2)"
    print(HasStaticVar.name)  // "(1)(2)"

    class Person {

        private var _name: String

        init(name: String) {
            self._name = name
        }

        var name: String {

            // getter
            get {
                return _name
            }

            // setter
            set {
                _name = newValue
            }
        }
    }

    let person = Person(name: "Alice")
    print(person.name)

    person.name = "Bob"
    print(person.name)

}
