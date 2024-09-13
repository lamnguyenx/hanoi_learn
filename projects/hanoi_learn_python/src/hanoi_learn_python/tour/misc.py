#!/usr/bin/env python3



def misc():

    ### OPERATIONS
    ## ------------------------------------------------
    ## ### Type Conversion
    typ = lambda x: type(x).__name__

    # fmt: off
    print("{} = {} ({})".format("5 + 1.2",    5.0 + 1.2,    typ(5.0 + 1.2)))
    print("{} = {} ({})".format("1995.0 / 4", 1995.0 / 4.0, typ(1995.0 / 4.0)))
    print("{} = {} ({})".format("1995 / 4",   1995 / 4,     typ(1995 / 4)))
    print("{} = {} ({})".format("1995 % 4",   1995 % 4,     typ(1995 % 4)))
    # fmt: on

    ## ------------------------------------------------
    ## ### Rune
    unicode_char = '🌳'
    print(
        "{} (U+{:X})".format(
            unicode_char,
            ord(unicode_char),
        )
    )
