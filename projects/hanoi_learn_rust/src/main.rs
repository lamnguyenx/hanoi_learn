fn typ<T>(_: &T) -> &'static str {
    std::any::type_name::<T>()
}

macro_rules! dbgq {
($($val:expr),+) => {{
    let values
    = vec![$(format!("{:?}", $val)),+];
    println!("{}", values.join(", "));
}};
}

#[rustfmt::skip]
fn main_00() {
    // ------------------------------------------------
    // ### Type Conversion
    println!("{} = {} ({})", "5.0 + 1.2",    5.0 + 1.2,    typ(&(5.0 + 1.2)));
    println!("{} = {} ({})", "1995.0 / 4.0", 1995.0 / 4.0, typ(&(1995.0 / 4.0)));
    println!("{} = {} ({})", "1995 / 4",     1995 / 4,     typ(&(1995 / 4)));
    println!("{} = {} ({})", "1995 % 4",     1995 % 4,     typ(&(1995 % 4)));
}

fn main_01() {
    // ------------------------------------------------
    // ### Rune
    let unicode_char = '🌳'; // Unicode character
    println!("{} (U+{:X})", unicode_char, unicode_char as u32);
}

fn main_02() {
    // ------------------------------------------------
    // ### Single vs Double Quotes
    println!("'test' -> {}", "compilation error");
}

#[rustfmt::skip]
fn cond_expr() {

    let s1 = 4;
    let g1 = if s1 > 9 { "A" }
        else if s1 > 8 { "B" }
        else if s1 > 7 { "C" }
        else { "?" };
    println!("{}", g1);
}

#[rustfmt::skip]
fn main() {
    let intro = r#"
    PyTorch is a machine learning library based on the Torch library

    It is used for applications such as computer vision and natural language processing.

    PyTorch is originally developed by Meta AI andnow part of the Linux Foundation umbrella.
    "#;
    dbgq!(intro);

    main_00();
    main_01();
    main_02();

    let hello = "Hello".to_lowercase();

    dbgq!(hello);

    println!(
        "
        multiline string
        "
    );

    let fruits0: Vec<i32> = Vec::new();
    dbgq!(fruits0);

    let mut letters = vec!["a", "b", "c"];
    letters[1] = "d";
    letters.push("e");
    dbgq!(letters);

    use std::collections::HashMap;

    let lmap0: HashMap<&str, i32> = HashMap::new();
    dbgq!(lmap0);

    let mut lmap: HashMap<_, _> = [("a", 97), ("b", 98), ("c", 99)].iter().cloned().collect();
    lmap.insert("d", 100);
    dbgq!(lmap);

    // condition
    let x = 10;
    if x > 5 {
        println!("x > 5");
    } else if x == 5 {
        println!("x = 5");
    } else {
        println!("x < 5");
    }

    let y = 10;
    match y {
        value if value > 5 => {
            println!("y > 5");
        }
        5 => {
            println!("y = 5");
        }
        _ => {
            println!("y < 5");
        }
    }

    // cond with pattern matching
    let num_str = "123";
    match num_str {
        "0" => println!("0"),

        s if s.contains("1") => println!("1 in {}", s),

        s if s.contains("2") => println!("2 in {}", s),

        s if s.contains("3") => println!("3 in {}", s),

        _ => println!("not now"),
    }

    let s1 = 4;
    let g1 = if s1 > 9 {
        "A"
    } else if s1 > 8 {
        "B"
    } else if s1 > 7 {
        "C"
    } else {
        "?"
    };

    let y = 10;

    match y {
        5 => println!("y = 5"),
        _ => println!("y != 5"),
    }

    cond_expr();

    // optional
    let op01: Option<i32> = Some(5); // Some(5)
    let op02: Option<i32> = None; // None

    dbgq!(op01);
    dbgq!(op02);

    // for loop
    let num_dict: HashMap<&str, Vec<i32>> = [
        ("prime", vec![2, 3, 5, 7, 11]),
        ("fibon", vec![1, 1, 2, 3, 5]),
        ("squar", vec![1, 4, 9, 16]),
    ]
    .iter()
    .cloned()
    .collect();

    for (ntype, nums) in &num_dict {
        for num in nums {
            dbgq!(ntype, num);
        }
    }

    for i in 0..5 {
        println!("{}", i);
    }

    for i in (7..=10).rev().step_by(2) {
        println!("{}", i);
    }

    // while
    let mut count = 0;
    loop {
        count += 1;
        if count == 5 {
            break;
        }
    }
    println!("count: {}", count);

    // type casting
    let tc_1_1 = 10.5 as i32;
    let tc_1_2 = 10 as f32;


    let tc_2
        = match "hello".parse::<i32>() {
            Ok(num) => Some(num),
            Err(_) => None,
        };

    println!("{:?}", tc_2);


    // functions
    fn f1(s1: &str,s2: &str) -> bool {
        return s1.len() > s2.len()
    }

    let f1_r2: bool = f1("hello", "nobita");
    println!("{}", f1_r2);


    fn f2(num: f64) -> (i32, f64) {
        let num_i = num as i32;
        let num_f = num - num_i as f64;

        return (num_i, num_f)
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
        return x + y + z
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
    fn f6_3(

        fx: fn(&str) -> usize,
        name: &str,

    ) -> usize {

        fx(name)
    }

    let f6_3_r = f6_3(
        f6_1,
        "morty",
    );

    // Print results
    println!("{}", f6_2_r);  // Output: 4
    println!("{}", f6_3_r);  // Output: 5



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
            let leap = (div == 0);

            return EPower0 {

                U:U,
                I:I,

                brand:String::from("GE") ,
                year:1995,

                leap:leap,
            }
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

fn _draft() {}
