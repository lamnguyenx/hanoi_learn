package hanoi_learn_java.tour;

import java.util.function.Function;

public class FunctionsAndClosures {

    public static void run() {

        // function are a first-class type
        // Assigning function to a variable using a lambda
        Function<String, Integer> f6_2 = FunctionsAndClosures::f6_1;
        int f6_2_r = f6_2.apply("rick"); // -> still need apply!!
        System.out.println(f6_2_r);

        int f6_3_r = f6_3(FunctionsAndClosures::f6_1, "morty");
        System.out.println(f6_3_r);

    }

    public static int f6_1(String name) {
        return name.length();
    }

    public static int f6_3(Function<String, Integer> fx, String name) {
        return fx.apply(name);
    }
}
