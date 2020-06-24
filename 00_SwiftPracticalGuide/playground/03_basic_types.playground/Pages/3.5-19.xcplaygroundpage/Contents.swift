let a = Optional("17")
let b = a.flatMap({ value in Int(value) }) // 17
type(of: b) // Optional<Int>.Type