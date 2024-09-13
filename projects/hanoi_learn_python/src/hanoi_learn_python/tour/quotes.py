#!/usr/bin/env python3



def quotes():
    print("test -> {}".format(r"'test'"))

    hello = 'Hello'.lower()

    (a, b) = (1, 2)
    a, b = 1, 2

    letters = ["a", "b", "c"]
    letters[1] = "d"

    lmap = {
        "a" : 97,
        "b" : 98,
        "c" : 99,
    }

    lmap["d"] = 100
    print(lmap)
