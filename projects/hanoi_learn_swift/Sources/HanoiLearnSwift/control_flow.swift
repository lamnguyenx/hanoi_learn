func control_flow() {

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
}
