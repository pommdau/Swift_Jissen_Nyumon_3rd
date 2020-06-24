struct SomeError: Error {}

func otherThrowingFunction() throws {
    throw SomeError()
}

func rethorwingFunction(_ throwingClosure: () throws -> Void) rethrows {
    do {
        try throwingClosure()

        // 引数のクロージャと関係ない関数がエラーを発生させているため、
        // コンパイルエラー
//         try otherThrowingFunction()
    } catch {
        throw SomeError()
    }

    // 関数内で新たなエラーを発生させているため、コンパイルエラー
//     throw SomeError()
}