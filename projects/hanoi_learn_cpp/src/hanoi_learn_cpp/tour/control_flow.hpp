#include <iostream>
#include <map>
#include <vector>

using namespace std;

void control_flow() {
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
}