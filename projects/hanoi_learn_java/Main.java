import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;

public class Main {

    public static void main(String[] args) {

        // List-like
        List<String> letters0 = new ArrayList<>();

        List<String> letters = new ArrayList<>(
                Arrays.asList("a", "b", "c"));
        letters.set(1, "d");
        letters.add("e");

        System.out.println(letters0);
        System.out.println(letters);

        // Dict-like
        Map<String, String> lmap0 = new HashMap<>();

        Map<String, Integer> lmap = new HashMap<>() {
            {
                put("a", 97);
                put("b", 98);
                put("c", 99);
            }
        };

        System.out.println(lmap0);
        System.out.println(lmap);

        // if else
        int x = 10;

        if (x > 5) {
            System.out.println("x > 5");
        } else if (x == 5) {
            System.out.println("x = 5");
        } else {
            System.out.println("x < 5");
        }

        // switch
        int y = 10;

        switch (y) {

            case 5:
                System.out.println("y = 5");
                break;

            default:
                System.out.println("y != 5");
                break;
        }

        // @formatter:off
        // ternary
        Integer s2 = 4;
        String g2 = s2 > 9 ? "A"
                  : s2 > 8 ? "B"
                  : s2 > 7 ? "C"
                  : "?";
        // @formatter:on
        System.out.println("g2: " + g2); // Prints: g2: ?

        // optional
        Optional<Integer> op01 = Optional.of(5); // Some(5)
        Optional<Integer> op02 = Optional.empty(); // None

        // Example usage
        op01.ifPresent(value -> System.out.println("op01: " + value));
        op02.ifPresent(value -> System.out.println("op02: " + value));

        // for loop (range)
        for (int i = 0; i < 5; i++) {
            System.out.println(i);
        }

        for (int i = 10; i > 6; i -= 2) {
            System.out.println(i);
        }

        // for loop
        Map<String, List<Integer>> d = new HashMap<>() {
            {
                put("prime", Arrays.asList(2, 3, 5, 7, 11));
                put("fibon", Arrays.asList(1, 1, 2, 3, 5));
                put("squar", Arrays.asList(1, 4, 9, 16));
            }
        };

        for (var e : d.entrySet()) {
            for (Integer n : e.getValue()) {
                System.out.println(e.getKey() + " " + n);
            }
        }

        // while loop
        int count = 0;

        while (true) {
            count++;
            if (count == 5) {
                break;
            }
        }

        System.out.println("count: " + count);

        // repeat-while loop
        int count2 = 0;

        do {
            count2++;
        } while (count2 < 5);

        System.out.println("count: " + count2);

        // type-casting
        int i_val = 10;
        double d_val = i_val;
        int i_val_2 = (int) d_val;

        System.out.println("i_val: " + i_val);
        System.out.println("d_val: " + d_val);
        System.out.println("i_val_2: " + i_val_2);

        double _10dot5 = 10.5;
        int tc_1_1 = (int) _10dot5;
        System.out.println("tc_1_1: " + tc_1_1);

        int _10 = 10;
        double tc_1_2 = (double) _10;
        System.out.println("tc_1_2: " + tc_1_2);

        Integer tc_2;

        try {
            tc_2 = Integer.parseInt("hello");
        } catch (NumberFormatException e) {
            tc_2 = null;
        }

        System.out.println(tc_2);

        // function are a first-class type
        // Assigning function to a variable using a lambda
        Function<String, Integer> f6_2 = Main::f6_1;
        int f6_2_r = f6_2.apply("rick"); // -> still need apply!!
        System.out.println(f6_2_r);

        int f6_3_r = f6_3(Main::f6_1, "morty");
        System.out.println(f6_3_r);

        // objects and classes
        EPower0 EP0 = new EPower0(7.0, 7.0);
        EP0.brand = "NVIDIA";

        System.out.println(EP0.brand);
        System.out.println(EP0.get_watt());

        EPower1 EP1 = new EPower1(7.0, 2.0);

        System.out.println(EP1.brand);
        System.out.println(EP1.get_watt());
        System.out.println(EP1.get_resistance());


        // static
        HasStaticVar HSV = new HasStaticVar();

        // - via instance
        // access via instance
        System.out.println(HSV.name); // (1)

        // modify via instance
        HSV.name += "(2)";
        System.out.println(HSV.name); // (1)(2)

        // - via class
        // access via class
        System.out.println(HasStaticVar.name); // (1)(2)

        // modify via class
        HasStaticVar.name += "(3)";
        System.out.println(HasStaticVar.name); // (1)(2)(3)
        System.out.println(new HasStaticVar().name); // (1)(2)(3)

    }
    // --- end of main

    public static boolean f1(String s1, String s2) {
        return s1.length() > s2.length();
    }

    public static F2Result f2(double num) {
        return new F2Result((int) num, num - (int) num);
    }

    static class F2Result {
        int numI;
        double numF;

        F2Result(int numI, double numF) {
            this.numI = numI;
            this.numF = numF;
        }
    }

    public static int f6_1(String name) {
        return name.length();
    }

    public static int f6_3(Function<String, Integer> fx, String name) {
        return fx.apply(name);
    }

    static class EPower0 {
        public double U;
        public double I;
        public String brand;
        public int year;
        public boolean leap;

        public EPower0(
                double inputU,
                double inputI) {

            U = inputU;
            I = inputI;
            brand = "GE";
            year = 1995;

            int div = 1995 % 4;
            leap = (div == 0);
        }

        public double get_watt() {
            return U * I;
        }
    }

    static class EPower1 extends EPower0 {
        public String tz;

        public EPower1(
                double inputU,
                double inputI) {

            super(inputU, inputI);
            tz = "GMT+7";
        }

        public double get_resistance() {
            return U / I;
        }
    }

    static class HasStaticVar {
        // Static member variable
        public static String name = "(1)";
    }

}
