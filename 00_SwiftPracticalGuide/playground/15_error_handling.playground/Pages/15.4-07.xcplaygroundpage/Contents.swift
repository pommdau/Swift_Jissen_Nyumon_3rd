struct SomeError: Error {}

func rethorwingFunction(_ throwingClosure: () throws -> Void) rethrows {
    try throwingClosure()
}

do {
    try rethorwingFunction {
        throw SomeError()
    }
} catch {
    // 引数のクロージャが発生させるエラーを、関数の呼び出し元で処理
    error // SomeError
}