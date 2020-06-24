let a = [1, 4, 7]
let b = a.map({ value in [value, value + 1] })
b // [[1, 2], [4, 5], [7, 8]]