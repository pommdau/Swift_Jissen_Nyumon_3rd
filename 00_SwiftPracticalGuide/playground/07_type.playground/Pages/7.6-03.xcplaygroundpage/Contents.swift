// 行列
struct Matrix {
    var rows: [[Int]]

    subscript(row: Int, column: Int) -> Int {
        get {
            return rows[row][column]
        }

        set {
            rows[row][column] = newValue
        }
    }
}

let matrix = Matrix(rows: [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
])

let element = matrix[1, 1] // 5