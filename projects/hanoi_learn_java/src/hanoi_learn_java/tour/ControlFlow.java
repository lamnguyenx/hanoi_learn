package hanoi_learn_java.tour;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ControlFlow {

    public static void run() {

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
    }
}
