enum OperationError : Error {
    case overCapacity
}

func triple(of int: Int) -> Int {
//     guard int <= Int.max / 3 else {
//         // 関数にthrowsキーワードが指定されていないため、
//         // do-catch文で囲まれていないthrow文によるエラーはコンパイルエラー
//         throw OperationError.overCapacity
//     }

    return int * 3
}