func isEqual<T : Equatable>(_ x: T, _ y: T) -> Bool {
    return x == y
}

isEqual("abc", "def") // false