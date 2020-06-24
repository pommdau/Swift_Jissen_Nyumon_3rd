let a = Optional("17")
let b = a.map({ value in Int(value) }) // 17
type(of: b) // Optional<Optional<Int>>.Type