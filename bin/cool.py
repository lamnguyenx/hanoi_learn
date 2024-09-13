#!/usr/bin/env python3

import os
import sys
from texttable import Texttable

COL_WIDTH = int(os.environ.get('COL_WIDTH', 32))


if __name__ == '__main__':
    data = sys.stdin.read()

    Grouped = {}
    for line in data.strip().split("\n"):
        lang, value = line.split('|', maxsplit=1)
        lang = lang.strip()
        value = value.strip()

        if lang not in Grouped:
            Grouped[lang] = list()

        Grouped[lang].append(value)

    Grouped = {k: Grouped[k] for k in sorted(Grouped.keys())}

    # Create a Texttable object
    table = Texttable()
    table.set_deco(Texttable.HEADER | Texttable.VLINES | Texttable.BORDER)

    # Prepare the data for the table
    headers = list(Grouped.keys())
    max_rows = max(len(values) for values in Grouped.values())

    # Pad shorter columns with empty strings
    data = [Grouped[header] + [''] * (max_rows - len(Grouped[header])) for header in headers]

    # Transpose the data
    data = list(map(list, zip(*data)))

    # Add headers and data to the table
    table.header(headers)
    table.add_rows(data, header=False)

    # Set the column alignment (optional)
    table.set_cols_align(["l"] * len(headers))

    # Set the maximum width for each column (adjust as needed)
    table.set_cols_width([COL_WIDTH] * len(headers))



    # Custom draw function to add a line after the header
    def custom_draw():
        lines = table.draw().split('\n')
        header = lines[:2]  # First two lines (top border and header)
        body = lines[2:]  # Rest of the table

        header[0] = header[0].replace('-', '─')
        body[0] = body[0].replace('=', '─')
        body[-1] = body[-1].replace('-', '─')
        return '\n'.join(header + body)

    # Print the custom-drawn table
    print(custom_draw())
