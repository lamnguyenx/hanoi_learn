#include <iostream>
#include <string>

using namespace std;

class EPower0 {
   public:
    double U;
    double I;
    string brand;
    int year;
    bool leap;

    EPower0(double inputU, double inputI) {
        U = inputU;
        I = inputI;
        brand = "GE";
        year = 1995;

        int div = 1995 % 4;
        leap = (div == 0);
    }

    double getWatt() { return U * I; }
};

class EPower1 : public EPower0 {
   public:
    string tz;

    EPower1(double inputU, double inputI) : EPower0(inputU, inputI) {
        tz = "GMT+7";
    }

    double getResistance() { return U / I; }
};

class HasStaticVar {
   public:
    static inline string name = "(1)";
};

void objects_and_classes() {
    // objects and classes
    EPower0 EP0 = EPower0(7, 2);
    EP0.brand = "NVIDIA";

    cout << EP0.brand << endl;
    cout << EP0.getWatt() << endl;

    EPower1 EP1 = EPower1(7, 2);

    cout << EP1.brand << endl;
    cout << EP1.getWatt() << endl;
    cout << EP1.getResistance() << endl;

    // static class
    HasStaticVar HSV;

    // - via instance
    // access via instance
    cout << HSV.name << endl;  // (1)

    // modify via instance
    HSV.name += "(2)";
    cout << HSV.name << endl;  // (1)(2)

    // - via class
    // access via class
    cout << HasStaticVar::name << endl;  // (1)(2)

    // modify via class
    HasStaticVar::name += "(3)";
    cout << HasStaticVar::name << endl;   // (1)(2)(3)
    cout << HasStaticVar().name << endl;  // (1)(2)(3)
}