func double(_ x: Int) -> Int {
    return x * 2
}

let array1 = [1, 2, 3]
let doubledArray1 = array1.map(double) // [2, 4, 6]

let array2 = [4, 5, 6]
let doubledArray2 = array2.map(double) // [8, 10, 12]