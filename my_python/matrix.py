def transpose(matrix):
    return [list(row) for row in zip(*matrix)]


def normalize_table(table):
    return [[cell.strip() for cell in line.split('|') if cell]
            for line in table.split('\n') if line]


def pad_cell(char, times):
    pass


def longest_cell(column, matrix):
    longest = 0
    for row in matrix:
        length = len(row[column])
        if length > longest:
            longest = length
    return longest


def pad_cells(column, matrix, char, limit):
    for row in range(len(matrix)):
        # print(row)
        print(matrix[row])
        length = len(matrix[row][column])
        print(length)
        matrix[row][column] += char * (length - limit)
        print(row)


def transpose_table(table):
    matrix = normalize_table(table)
    # Transpose the matrix if the table is vertically oriented
    matrix = transpose(matrix)
    rows = ['| ' + ' | '.join(row) + ' |' for row in matrix]
    # return '|' + '\n'.join(['|'.join(row) for row in matrix]) + '|'
    return '\n'.join(rows)
