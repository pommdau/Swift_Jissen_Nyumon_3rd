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

do {
    let tripleOfInt = try triple(of: int)
    print("Success: \(tripleOfInt)")
} catch {
    print("Error: \(error)")
}
