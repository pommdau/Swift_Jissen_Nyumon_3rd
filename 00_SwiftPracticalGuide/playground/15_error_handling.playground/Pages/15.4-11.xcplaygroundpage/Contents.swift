enum OperationError : Error {
    case overCapacity
}

func triple(of int: Int) throws -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }

    return int * 3
}

let int = 9
let tripleOfInt = try! triple(of: int) // do-catch文なしで実行可能
print(tripleOfInt)
