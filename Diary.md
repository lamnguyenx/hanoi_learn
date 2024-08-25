# Warm up


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


## go
This will create go.mod file:
```bash
cd src/hanoi_learn/go
go mod init hanoi_learn-go
```

then we have to create common.go myself
```bash
touch src/hanoi_learn/go/common.go
```

in this file we declare main package -> later build
The main function can be located in any file within the same directory as long as those files belong to the main package. It does not have to be in a file named main.go
 -> we rename it to "main.go" for easier maintenance

## rust
In Vscode, to make rust-analyzer and building works nicely
write this to `Cargo.toml`
```
[workspace]

resolver = "2"
members = [
    "src/hanoi_learn/rust",
]
```

Then inside the subfolder `src/hanoi_learn/rust`,
run `cargo init`, or from the direct parent, run `cargo new`

`main.rs` must be named like that, not like in `go`
and it must be placed inside `./src` subdir

## cpp
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

## arithmetic ops

Here's the updated comparison table with Python listed before Go:

| Feature                       | Python                | Rust                   | C++                    | Go                     |
|-------------------------------|-----------------------|------------------------|------------------------|-----------------------|
| Addition (`+`)                | Supported             | Supported              | Supported              | Supported             |
| Subtraction (`-`)             | Supported             | Supported              | Supported              | Supported             |
| Multiplication (`*`)          | Supported             | Supported              | Supported              | Supported             |
| Division (`/`)                | Supported (float result)| Supported (float result)| Supported (float result)| Supported (float result) |
| Integer Division (`//`)       | Supported             | Supported              | Not directly supported  | Supported             |
| Modulus (`%`)                 | Supported             | Supported              | Supported              | Supported             |
| Integer Division Behavior      | Truncates towards zero | Truncates towards zero | Truncates towards zero | Truncates towards zero |
| Overflow Behavior              | Automatically promotes to long | Panics in debug mode; wraps in release | Undefined behavior (if not handled) | Panics on overflow    |
| Type Safety                   | Dynamically typed     | Strongly typed         | Weakly typed           | Strongly typed        |
### Notes:
- **Division Behavior**: 
  - In Python, the `/` operator performs floating-point division, while `//` is used for integer division.
- **Overflow Handling**:
  - **Python**: Automatically promotes integers to long if they exceed the maximum value of an integer.
