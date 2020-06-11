func printIfEqual<T: Equatable>(_ arg1: T, _ arg2: T) {
    if arg1 == arg2 {
        print("Both are \(arg1)")
    }
}

printIfEqual(123, 123)
printIfEqual("str", "str")
