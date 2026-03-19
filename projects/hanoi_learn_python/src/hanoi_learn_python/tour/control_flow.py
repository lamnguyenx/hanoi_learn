#!/usr/bin/env python3



def control_flow():

    # condition
    x = 10
    if x > 5:
        print("x > 5")
    elif x == 5:
        print("x = 5")
    else:
        print("x < 5")

    # fmt: off
    s1 = 4
    g1 =     "A" if s1 > 9 \
        else "B" if s1 > 8 \
        else "C" if s1 > 7 \
        else "?"
    # fmt: on
    print(g1)

    # while loop
    count = 0
    while True:
        count += 1
        if count == 5:
            break
    print(count)

    # type casting
    tc_1_1 = int(10.5)
    tc_1_2 = float(10)

    try:
        tc_2 = int("10")
    except ValueError:
        tc_2 = None

    print(tc_2)  # None
