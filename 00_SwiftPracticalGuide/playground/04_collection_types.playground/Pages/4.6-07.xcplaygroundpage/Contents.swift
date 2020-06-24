let strings = ["abc", "123", "def", "456"]
let integers = strings.compactMap({ value in Int(value) })
integers // [123, 456]