package hanoi_learn_java.tour;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

public class Miscs {

    public static void run() {
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
    }
}
