func concat<T : Collection, U : Collection>(
    _ argument1: T, _ argument2: U) -> [T.Element]
    where T.Element == U.Element {

    return Array(argument1) + Array(argument2)
}

let array = [1, 2, 3] // [Int]型
let set = Set([1, 2, 3]) // Set<Int>型
let result = concat(array, set) // [1, 2, 3, 2, 3, 1]