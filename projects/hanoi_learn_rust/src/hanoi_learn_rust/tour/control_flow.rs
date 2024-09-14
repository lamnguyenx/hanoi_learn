use std::collections::HashMap;
use crate::hanoi_utils_rust::dbgq;

pub fn control_flow() {
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

    let tc_2 = match "hello".parse::<i32>() {
        Ok(num) => Some(num),
        Err(_) => None,
    };

    println!("{:?}", tc_2);
}
