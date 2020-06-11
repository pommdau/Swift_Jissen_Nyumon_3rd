var board: [[Int]] = {
    let sideLength = 3
    let row = Array(repeating: 1, count: sideLength)
    let board = Array(repeating: row, count: sideLength)
    return board
}()

board // [[1, 1, 1], [1, 1, 1], [1, 1, 1]]