package hanoi_learn_java.tour;

public class ObjectsAndClasses {

    public static class EPower0 {
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

    public static class EPower1 extends EPower0 {
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

    public static class HasStaticVar {
        // Static member variable
        public static String name = "(1)";
    }

    public static void run() {

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

}