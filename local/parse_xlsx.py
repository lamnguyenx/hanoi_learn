# sauce: https://monica.im/home/chat/Monica/monica?convId=conv%3Acad209aa-2025-41af-b16c-867f3b629306

import pandas as pd
from lxml import etree

# Parse the XML file
tree = etree.parse('docs/hanoi_learn.fods')
root = tree.getroot()

# Extract namespaces
namespaces = root.nsmap

# Extract styles
styles = {}
for style in root.xpath('.//style:style', namespaces=namespaces):
    style_name = style.get(f"{{{namespaces['style']}}}name")
    if style.xpath('.//style:text-properties[@style:text-line-through-style="solid"]', namespaces=namespaces):
        styles[style_name] = 'line-through'

# Function to process cell content
def process_cell_content(cell):
    content = []
    for p in cell.xpath('.//text:p', namespaces=namespaces):
        text = "".join(p.xpath('.//text()'))
        spans = p.xpath('.//text:span', namespaces=namespaces)
        if spans:
            for span in spans:
                span_style = span.get(f"{{{namespaces['text']}}}style-name")
                span_text = span.text or ""
                if span_style in styles and styles[span_style] == 'line-through':
                    content.append(f"<line-through>{span_text}</line-through>")
                else:
                    content.append(span_text)
        else:
            content.append(text)
    return "\n".join(content)

# Extract table data
data = []
for row in root.xpath('.//table:table-row', namespaces=namespaces):
    row_data = []
    for cell in row.xpath('.//table:table-cell', namespaces=namespaces):
        cell_style = cell.get(f"{{{namespaces['table']}}}style-name")
        cell_content = process_cell_content(cell)
        if cell_style in styles and styles[cell_style] == 'line-through':
            cell_content = f"<line-through>{cell_content}</line-through>"
        row_data.append(cell_content)
    data.append(row_data)

# Create DataFrame
df = pd.DataFrame(data)

# Display the DataFrame
for index, value in df.iloc[:, 4].items():
    print(f'Row {index + 1}: {value}')
