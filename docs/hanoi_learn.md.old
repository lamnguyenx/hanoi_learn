## Basics

| Feature                | C++                                         | Go                                        | Python                         | Rust                                | Swift                              |
| ---------------------- | ------------------------------------------- | ----------------------------------------- | ------------------------------ | ----------------------------------- | ---------------------------------- |
| Fundamental Data Types | int, float, double, bool, char, std::string | int, float64, bool, string                | int, float, bool, str          | i32, f64, bool, char, String        | Int, Double, Bool, String          |
| Collection Types       | std::vector, std::set, std::map             | slice, map, channel                       | list, set, dict                | Vec, HashSet, HashMap               | Array, Set, Dictionary             |
| Variables              | Mutable and const                           | Mutable (var) and constant (const)        | Mutable by default             | Mutable (mut) and immutable (let)   | Mutable (var) and constant (let)   |
| Constants              | const, constexpr                            | const                                     | Uppercase naming convention    | const, static                       | let                                |
| Tuples                 | std::tuple                                  | Not native; use struct or multiple return | Native support                 | Native support                      | Native support                     |
| Optional Types         | std::optional (C++17)                       | Zero values (e.g., nil for pointers)      | None                           | Option<T>                           | Optional<T>                        |
| Type Safety            | Strong, but allows unsafe operations        | Strong, with interface{} flexibility      | Dynamic, runtime type checking | Strong, prevents many common errors | Strong, compile-time type checking |

### Toolchain

| Feature | Go         | Rust           | C++                        |
| ------- | ---------- | -------------- | -------------------------- |
| Build   | `go build` | `cargo build`  | `xmake` or `make`          |
| Format  | `go fmt`   | `cargo fmt`    | `clang-format` or `astyle` |
| Analyze | `go vet`   | `cargo clippy` | `cppcheck` or `clang-tidy` |

| Feature                     | Go   | Rust | C++       |
| --------------------------- | ---- | ---- | --------- |
| Standalone binary           | Yes  | Yes  | Partially |
| Version independence        | High | High | Limited   |
| Deployment simplicity       | High | High | Moderate  |
| Built-in version management | Yes  | Yes  | No        |

#### go
This will create go.mod file:
```bash
cd projects/hanoi_learn_go
go mod init hanoi_learn-go
```

then we have to create common.go myself
```bash
touch projects/hanoi_learn_go/common.go
```

in this file we declare main package -> later build
The main function can be located in any file within the same directory as long as those files belong to the main package. It does not have to be in a file named main.go
 -> we rename it to "main.go" for easier maintenance
#### rust
In Vscode, to make rust-analyzer and building works nicely
write this to `Cargo.toml`
```
[workspace]

resolver = "2"
members = [
    "projects/hanoi_learn_rust",
]
```

Then inside the subfolder `projects/hanoi_learn_rust`,
run `cargo init`, or from the direct parent, run `cargo new`

`main.rs` must be named like that, not like in `go`
and it must be placed inside `./src` subdir
#### cpp
Please use `xmake`
run `xmake create` to creat new project,
you cant run `xmake init` as with `cargo` or `go`



# Types

## int

| Type      | Go      | Rust    | C++       |
| --------- | ------- | ------- | --------- |
| `int`     | `0`     | `0`     | Undefined |
| `float64` | `0.0`   | `0.0`   | Undefined |
| `bool`    | `false` | `false` | Undefined |
| `string`  | `""`    | `""`    | Undefined |
| `ptr`     | `nil`   | `None`  | Undefined |
| `array`   | Zeroed  | Zeroed  | Undefined |
| `struct`  | Zeroed  | Zeroed  | Undefined |

## float

| Size (bits) | Go Types  | Rust Types                          | C++ Types     |
| ----------- | --------- | ----------------------------------- | ------------- |
| 32          | `float32` | `f32`                               | `float`       |
| 64          | `float64` | `f64`                               | `double`      |
| 128         | -         | `f128` (optional, requires feature) | `long double` |
### Notes:
- Go does not have a built-in 128-bit floating-point type.
- Rust's `f128` is not part of the standard library and requires specific features or crates.
- C++ `long double` size can vary based on the compiler and platform.

### arithmetic ops

Here's the updated comparison table with Python listed before Go:

| Feature                   | Python                         | Go                       | Rust                                   | C++                                 |
| ------------------------- | ------------------------------ | ------------------------ | -------------------------------------- | ----------------------------------- |
| Addition (`+`)            | Supported                      | Supported                | Supported                              | Supported                           |
| Subtraction (`-`)         | Supported                      | Supported                | Supported                              | Supported                           |
| Multiplication (`*`)      | Supported                      | Supported                | Supported                              | Supported                           |
| Division (`/`)            | Supported (float result)       | Supported (float result) | Supported (float result)               | Supported (float result)            |
| Floor Division            | must use `//`                  | by divide 2 ints         | by divide 2 ints                       | by divide 2 ints                    |
| Modulus (`%`)             | Supported                      | Supported                | Supported                              | Supported                           |
| Integer Division Behavior | Truncates towards zero         | Truncates towards zero   | Truncates towards zero                 | Truncates towards zero              |
| Overflow Behavior         | Automatically promotes to long | Panics on overflow       | Panics in debug mode; wraps in release | Undefined behavior (if not handled) |
| Type Safety               | Dynamically typed              | Strongly typed           | Strongly typed                         | Weakly typed                        |
### Notes:
- **Division Behaviour**:
  - In Python, the `/` operator performs floating-point division, while `//` is used for integer division.
- **Overflow Handling**:
  - **Python**: Automatically promotes integers to long if they exceed the maximum value of an integer.

### Type Conversion
|Feature/Language|Python|Rust|Go|C++|
|---|---|---|---|---|
|Automatic Type Promotion|Yes|No|No|Yes|
|Type Conversion Requirement|Implicit conversions allowed|Explicit conversion required|Explicit conversion required|Implicit conversions allowed|
|Notes|Flexible, but can lead to unexpected results.|Ensures type safety and clarity.|Promotes clarity; no automatic promotions.|Can lead to ambiguities; requires caution.|

### Rune

| Language | Type/Representation        | Description                                                                                                                                                                  |
| -------- | -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| C++      | `std::string` (with UTF-8) | Use `std::string` to represent Unicode characters as UTF-8 strings. For individual code points, `char32_t` can be used, but printing requires conversion to a string format. |
| Go       | `rune`                     | An alias for `int32`, representing a Unicode code point.                                                                                                                     |
| Python   | `str`                      | Represents a single Unicode character as a string. Use `chr()` and `ord()` for conversions between characters and code points.                                               |
| Rust     | `char`                     | Represents a Unicode scalar value (32 bits), capable of holding any Unicode character.                                                                                       |
|          |                            |                                                                                                                                                                              |
### Single vs Double Quotes

Except Python, single quote and double quotes literals are completely different.

| Feature             | C++           | Go       | Python | Rust   |
| ------------------- | ------------- | -------- | ------ | ------ |
| Single Quotes (`'`) | `char`        | `rune`   | `str`  | `char` |
| Double Quotes (`"`) | `std::string` | `string` | `str`  | `&str` |


## Tour
(this is based on Swift Tour)

|                            | C++      | Go       | Python  | Rust     | Swift    |
| -------------------------- | -------- | -------- | ------- | -------- | -------- |
| Global scope as entrypoint | ✔️       | ✔️       | ❌       | ✔️       | ❌        |
| Default entrypoint         | `main()` | `main()` | `if...` | `main()` | `main()` |


### Assignment

| ***Method***                 | **C++**                                                     | **Go**                                       | **Python**                          | **Rust**                                                     | **Swift**                                                                           |
| ---------------------------- | ----------------------------------------------------------- | -------------------------------------------- | ----------------------------------- | ------------------------------------------------------------ | ----------------------------------------------------------------------------------- |
| Direct assignment            | `int myVar = 95;`<br>`auto myVar = 95;` (infers type)       | `myVar := 95`  (infers type)                 | `my_var = 95`  (dynamic typing)     | `let my_var = 95;`  (infers type)                            | `var myVar = 95`  (infers type)                                                     |
| Explicit type annotation     | `int myVar = 95;`                                           | `var myVar int = 95`                         | `my_var: int = 95`                  | `let my_var: i32 = 95;`                                      | `let myVar: Int = 95`                                                               |
| Assignment after declaration | `int myVar;`<br>`myVar = 95;`                               | `var myVar int`<br>`myVar = 95`              | ❌                                   | `let mut my_var: i32;`<br>`my_var = 95;`                     | `var myVar: Int`<br>`myVar = 95`                                                    |
| Multiple assignment          | `int a = 1, b = 2, c = 3;`                                  | `a, b, c := 1, 2, 3`                         | `a = b = c = 1`                     | `let (a, b, c) = (1, 2, 3);`                                 | `let (a, b, c) = (1, 2, 3)`                                                         |
| Assignment using pointers    | `int* ptr = new int(95);`                                   | `ptr := new(int)`<br>`*ptr = 95`             | ❌                                   | `let ptr = Box::new(95);`                                    | `var ptr: UnsafeMutablePointer<Int> = .allocate(capacity: 1)`<br>`ptr.pointee = 95` |
| Assignment using references  | `int myVar = 95;`<br>`int& ref = myVar;`                    | ❌                                            | ❌                                   | `let my_var = 95;`<br>`let ref = &my_var;`                   | `var myVar = 95`<br>`let ref = &myVar`                                              |
| Const vs Mutable             | `const int CONST = 5;`<br>`int y = 5;`                      | `const CONST = 5`<br>`var y = 5`             | `y = 5` # All variables are mutable | `let CONST = 5; // immutable`<br>`let mut y = 5; // mutable` | `let CONST = 5 // immutable`<br>`var y = 5 // mutable`                              |
| Tuple assignment             | `std::tuple<int, int> t = {95, 100};`<br>`auto [a, b] = t;` | `myVar, anotherVar := 95, 100`               | `my_var, another_var = 95, 100`     | `let (my_var, another_var) = (95, 100);`                     | `let (myVar, anotherVar) = (95, 100)`                                               |
| Array assignment             | `int arr[5] = {95};`                                        | `arr := [5]int{95}`                          | `arr = [95] + [0] * 4`              | `let mut arr = [95; 5];`                                     | `var arr = [95] + [Int](repeating: 0, count: 4)`                                    |
| Slice assignment (Go)        | ❌                                                           | `slice := make([]int, 5)`<br>`slice[0] = 95` | ❌                                   | ❌                                                            | ❌                                                                                   |
| Destructuring assignment     | `auto [x, y] = std::pair<int, int>(1, 2);`                  | `x, y := pair[0], pair[1]` # (manual)        | `x, y = [1, 2]`                     | `let (x, y) = (1, 2);`                                       | `let (x, y) = (1, 2)`                                                               |
| Optional types               | ❌                                                           | ❌                                            | ❌                                   | `let x: Option<i32> = Some(5);`                              | `var x: Int? = 5`                                                                   |
| Ownership and borrowing      | ❌                                                           | ❌                                            | ❌                                   | `let s = String::from("hello");`<br>`let r = &s; // borrow`  | ❌                                                                                   |
|                              | <br><br>                                                    |                                              |                                     |                                                              |                                                                                     |
|                              |                                                             |                                              |                                     |                                                              |                                                                                     |
|                              |                                                             |                                              |                                     |                                                              |                                                                                     |
