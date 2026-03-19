func functions_and_closures() {

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
}
