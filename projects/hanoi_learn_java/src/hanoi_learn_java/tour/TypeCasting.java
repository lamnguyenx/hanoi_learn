package hanoi_learn_java.tour;

public class TypeCasting {

    public static void run() {

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
    }
}
