func isEqual<T : Equatable>(_ x: T, _ y: T) -> Bool {
    return x == y
}

isEqual("abc", "def") // false
isEqual(1.0, 3.14) // false
isEqual(false, false) // true