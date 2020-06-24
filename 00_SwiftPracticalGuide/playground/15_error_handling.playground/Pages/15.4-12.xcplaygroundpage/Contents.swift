enum OperationError : Error {
    case overCapacity
}

func triple(of int: Int) throws -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }

    return int * 3
}

let int = Int.max
// let tripleOfInt = try! triple(of: int) // 実行時エラー
// print(tripleOfInt)