func objects_and_classes() {

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
