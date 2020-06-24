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
    try someFunction()
    cleanup() // someFunctionでエラーが発生した場合は実行されない
} catch {
    print("Error: \(error)")
}
