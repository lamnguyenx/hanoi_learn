#include <codecvt>
#include <functional>
#include <iostream>
#include <nlohmann/json.hpp>
#include <optional>
#include <string>
#include <unordered_map>
#include <vector>

#define FMT_HEADER_ONLY
#include <fmt/format.h>

using namespace std;
using json = nlohmann::json;

// local
#include <hanoi_learn_cpp/tour/functions_and_closures.hpp>
#include <hanoi_learn_cpp/tour/objects_and_classes.hpp>

// OPERATIONS
int main() {
    cout << boolalpha;
    string intro = R"(
    PyTorch is a machine learning library based on the Torch library
U
    It is used for applications such as computer vision and natural language processing.

    PyTorch is originally developed by Meta AI andnow part of the Linux Foundation umbrella.
    )";

    fmt::print(intro);

    // ------------------------------------------------
    // ### Type Conversion
    // clang-format off
    fmt::print("{} = {} ({})\n", "5 + 1.2"    , 5 + 1.2    , typeid(5 + 1.2   ).name());
    fmt::print("{} = {} ({})\n", "1995.0 / 4" , 1995.0 / 4 , typeid(1995.0 / 4).name());
    fmt::print("{} = {} ({})\n", "1995 / 4"   , 1995 / 4   , typeid(1995 / 4  ).name());
    fmt::print("{} = {} ({})\n", "1995 % 4"   , 1995 % 4   , typeid(1995 % 4  ).name());
    // clang-format on

    // ------------------------------------------------
    // ### Rune
    wstring_convert<codecvt_utf8<char32_t>, char32_t> Converter;
    char32_t unicode_char = U'🌳';
    fmt::print("{} (U+{:X})\n", Converter.to_bytes(unicode_char),
               static_cast<uint32_t>(unicode_char));

    // NOTE: fmt::print can accept any type
    // that has a suitable formatting function defined. This includes:
    // + Strings (const char* or string)
    // + Integer types (int, uint32_t, etc.)
    // + Floating-point types (float, double, etc.)
    // + Custom types (if they have fmt formatting defined)

    // ------------------------------------------------
    // ### Single vs Double Quotes
    cout << "'test' -> " << 'test' << endl;

    size_t hello_beg = string("hello").length();

    cout << hello_beg << endl;

    auto result = 1 + 2 + 3 + 4;

    fmt::print("{} {} {} {}\n", "first", "second", "third", "last");

    int a, b, c, d;
    tie(a, b, c, d) = make_tuple(1, 2, 3, 4);

    const auto CONST = 5;

    int i_val = 95;
    double f_val = double(i_val);
    int i_val_2 = static_cast<int>(i_val);

    vector<string> letters0;
    cout << json(letters0).dump(4) << endl;

    vector<string> letters = {"a", "b", "c"};
    letters[1] = "d";
    letters.push_back("e");
    cout << json(letters).dump(4) << endl;

    unordered_map<string, string> lmap0;
    cout << json(lmap0).dump(4) << endl;

    unordered_map<string, int> lmap = {
        {"a", 97},
        {"b", 98},
        {"c", 99},
    };

    lmap["d"] = 100;

    cout << json(lmap).dump(4) << endl;

    // condition
    int x = 10;
    if (x > 5) {
        cout << "x > 5" << endl;
    } else if (x == 5) {
        cout << "x = 5" << endl;
    } else {
        cout << "x < 5" << endl;
    };

    int y = 10;
    switch (y) {
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            cout << "y > 5" << endl;
            break;
        case 5:
            cout << "y = 5" << endl;
            break;
        default:
            cout << "y < 5" << endl;
            break;
    }

    // for loop
    map<string, vector<int>> numDict = {
        {"prime", {2, 3, 5, 7, 11}},
        {"fibon", {1, 1, 2, 3, 5}},
        {"squar", {1, 4, 9, 16}},
    };

    for (const auto& [ntype, nums] : numDict) {
        for (int num : nums) {
            cout << ntype << " " << num << endl;
        }
    }

    for (int i = 0; i < 5; i++) {
        cout << i << endl;
    }

    for (int i = 10; i > 6; i -= 2) {
        cout << i << endl;
    }

    // while
    int count = 0;
    while (true) {
        count++;
        if (count == 5) {
            break;
        }
    }
    cout << "count: " << count << endl;

    // type-casting
    int tc_1_1 = static_cast<int>(10.5);
    float tc_1_2 = static_cast<float>(10);

    cout << "tc_1_1: " << tc_1_1 << endl;
    cout << "tc_1_2: " << tc_1_2 << endl;

    string str = "hello";
    optional<int> tc_2;

    try {
        tc_2 = stoi(str);
    } catch (...) {
        tc_2 = nullopt;
    }

    // clang-format off
    cout
        << *tc_2
        << "(actual result: "
        << tc_2.has_value() << ")"
        << endl;
    // clang-format on

    functions_and_closures();
    objects_and_classes();

    // -- END --
    return 0;
}
