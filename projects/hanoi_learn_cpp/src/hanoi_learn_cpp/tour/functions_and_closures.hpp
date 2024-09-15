#include <functional>
#include <iostream>
#include <string>
#include <tuple>

using std::cout;
using std::endl;

bool f1(string s1, string s2) { return s1.length() > s2.length(); }

tuple<int, float> f2(float num) {
    int num_i = static_cast<int>(num);
    float num_f = num - num_i;
    return make_tuple(num_i, num_f);
}

// Functions are a first-class type
int f6_1(string name) { return name.length(); }

// Passing function as an argument
int f6_3(

    function<int(string)> fx, string name

) {
    return fx(name);
}

void functions_and_closures() {
    // function
    bool f1_r1 = f1("hello", "nobita");
    cout << boolalpha << f1_r1 << endl;  // Output: false

    auto f2_r2 = f2(6.9);

    int f2_r2_i;
    float f2_r2_f;
    tie(f2_r2_i, f2_r2_f) = f2(6.9);

    cout << f2_r2_i << ", " << f2_r2_f << endl;

    // closure / lambda
    auto f4 = [](int x, int y) { return x + y; };
    int f4_r = f4(3, 5);
    cout << f4_r << endl;

    auto f5 = [](int x, int y) {
        int z = 10;
        return x + y + z;
    };
    int f5_r = f5(3, 5);
    cout << f5_r << endl;

    // Assigning function to a variable
    function<int(const string&)> f6_2 = f6_1;
    int f6_2_r = f6_2("rick");

    int f6_3_r = f6_3(

        f6_1, "morty");

    // Print results
    cout << f6_2_r << endl;  // Output: 4
    cout << f6_3_r << endl;  // Output: 5
}
