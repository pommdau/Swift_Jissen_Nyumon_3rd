enum Error : Swift.Error {
    case someError
}

func someFunction() throws {
    print("Do something")
    throw Error.someError
}

func cleanup() {
    print("Cleanup")
}

do {
    defer {
        // do節を抜けたタイミングで必ず実行される
        cleanup()
    }
    try someFunction()
} catch {
    print("Error: \(error)")
}
