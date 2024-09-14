pub fn objects_and_classes() {
    struct EPower0 {
        U: f64,
        I: f64,
        brand: String,
        year: i32,
        leap: bool,
    }
    impl EPower0 {
        fn new(U: f64, I: f64) -> EPower0 {
            let div = 1995 % 4;
            let leap = div == 0;
            return EPower0 {
                U: U,
                I: I,
                brand: String::from("GE"),
                year: 1995,
                leap: leap,
            };
        }
        fn get_watt(&self) -> f64 {
            self.U * self.I
        }
    }
    let mut EP0 = EPower0::new(7.0, 2.0);
    EP0.brand = String::from("NVIDIA");
    println!("{}", EP0.get_watt());
    println!("{}", EP0.brand);
}
