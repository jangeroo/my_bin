from my_python import matrix

table = ('| name  | location | age |\n'
         '| Sean  | 0        | 10  |\n'
         '| Lucy  | 100      | 5   |\n'
         '| Larry | 150      | 8   |')

# print(matrix.transpose_table(table))

m = matrix.normalize_table(table)

print(matrix.longest_cell(1, m))

matrix.pad_cells(1, m, '*', 8)

print(matrix.transpose_table(table))
