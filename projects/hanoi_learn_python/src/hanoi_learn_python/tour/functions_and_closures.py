#!/usr/bin/env python3



def functions_and_closures():

    def f1(s1, s2):
        return len(s1) > len(s2)

    f1_r1 = f1("hello", "nobita")
    f1_r2 = f1(s1="hello", s2="nobita")



    def f2(num: float) -> tuple[int, float]:
        num_i = int(num)
        num_f = num - num_i
        return num_i, num_f

    f2_r2 = f2(6.9)
    f2_r2_i, f2_r2_f = f2(6.9)



    def f3(x, y, z):

        def sum_yz(y, z):
            return y + z

        return x + sum_yz(y, z)

    # closure / lambda
    f4 = lambda x, y: x + y
    f4_r = f4(3, 5)
    print(f4_r)



    # functions are a first-class type
    def f6_1(name):
        return len(name)

    # Assigning function to a variable
    f6_2 = f6_1
    f6_2_r = f6_2("rick")



    # Passing function as an argument
    def f6_3(fx, name):
        return fx(name)

    f6_3_r = f6_3(f6_1, "morty")

    # print results
    print(f6_2_r)
    print(f6_3_r)
