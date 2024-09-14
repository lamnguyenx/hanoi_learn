macro_rules! dbgq {
    ($($val:expr),+) => {
        {
    let values
    = vec![$(format!("{:?}", $val)),+];
    println!("{}", values.join(", "));
        }
    };
}

pub(crate) use dbgq;


pub fn typ<T>(_: &T) -> &'static str {
    std::any::type_name::<T>()
}