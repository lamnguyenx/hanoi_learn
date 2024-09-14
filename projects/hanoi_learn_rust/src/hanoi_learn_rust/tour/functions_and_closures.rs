use crate::hanoi_utils_rust::dbgq;

pub fn functions_and_closures() {
    // functions
    fn f1(s1: &str, s2: &str) -> bool {
        return s1.len() > s2.len();
    }

    let f1_r2: bool = f1("hello", "nobita");
    println!("{}", f1_r2);

    fn f2(num: f64) -> (i32, f64) {
        let num_i = num as i32;
        let num_f = num - (num_i as f64);

        return (num_i, num_f);
    }

    let f2_r2 = f2(6.9);
    let (f2_r2_i, f2_r2_f) = f2(6.9);

    dbgq!(f2_r2);
    dbgq!(f2_r2_i);
    dbgq!(f2_r2_f);

    fn f3(x: i32, y: i32, z: i32) -> i32 {
        fn sum_yz(y: i32, z: i32) -> i32 {
            y + z
        }

        x + sum_yz(y, z)
    }
    let result = f3(1, 2, 3); // result is 6
    dbgq!(result);

    // closure / lambda
    let f4 = |x: i32, y: i32| x + y;
    let f4_r = f4(3, 5);
    println!("{}", f4_r);

    let f5 = |x: i32, y: i32| {
        let z = 10;
        return x + y + z;
    };
    let f5_r = f5(3, 5);
    println!("{}", f5_r);

    // Functions are a first-class type
    fn f6_1(name: &str) -> usize {
        name.len()
    }

    // Assigning function to a variable
    let f6_2: fn(&str) -> usize = f6_1;
    let f6_2_r = f6_2("rick");

    // Passing function as an argument
    fn f6_3(fx: fn(&str) -> usize, name: &str) -> usize {
        fx(name)
    }

    let f6_3_r = f6_3(f6_1, "morty");

    // Print results
    println!("{}", f6_2_r); // Output: 4
    println!("{}", f6_3_r); // Output: 5
}
