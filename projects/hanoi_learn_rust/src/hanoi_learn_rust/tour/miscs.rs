use crate::hanoi_utils_rust::dbgq;
use crate::hanoi_utils_rust as hn;

#[rustfmt::skip]
fn main_00() {
    // ------------------------------------------------
    // ### Type Conversion
    println!("{} = {} ({})", "5.0 + 1.2",    5.0 + 1.2,    hn::typ(&(5.0 + 1.2)));
    println!("{} = {} ({})", "1995.0 / 4.0", 1995.0 / 4.0, hn::typ(&(1995.0 / 4.0)));
    println!("{} = {} ({})", "1995 / 4",     1995 / 4,     hn::typ(&(1995 / 4)));
    println!("{} = {} ({})", "1995 % 4",     1995 % 4,     hn::typ(&(1995 % 4)));
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
pub fn miscs() {
    let intro =
        r#"
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

    println!("
        multiline string
        ");

    let fruits0: Vec<i32> = Vec::new();
    dbgq!(fruits0);

    let mut letters = vec!["a", "b", "c"];
    letters[1] = "d";
    letters.push("e");
    dbgq!(letters);

    use std::collections::HashMap;

    let lmap0: HashMap<&str, i32> = HashMap::new();
    dbgq!(lmap0);

    let mut lmap: HashMap<_, _> = [
        ("a", 97),
        ("b", 98),
        ("c", 99),
    ]
        .iter()
        .cloned()
        .collect();
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
    let g1 = if s1 > 9 { "A" } else if s1 > 8 { "B" } else if s1 > 7 { "C" } else { "?" };

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
}
