enum OperationError : Error {
    case overCapacity
}

func triple(of int: Int) throws -> Int {
    guard int <= Int.max / 3 else {
        throw OperationError.overCapacity
    }

    return int * 3
}

if let triple = try? triple(of: 9) {
    print(triple)
}
