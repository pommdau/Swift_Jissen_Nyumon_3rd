enum SomeError: Error {
    case originalError
    case convertedError
}

func rethorwingFunction(_ throwingClosure: () throws -> Void) rethrows {
    do {
        try throwingClosure()
    } catch {
        throw SomeError.convertedError
    }
}

do {
    try rethorwingFunction {
        throw SomeError.originalError
    }
} catch {
    error // ConvertedError
}