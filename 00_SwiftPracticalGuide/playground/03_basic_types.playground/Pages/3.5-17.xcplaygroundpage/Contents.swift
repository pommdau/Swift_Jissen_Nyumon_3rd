let a = Optional(17)
let b = a.map({ value in value * 2 }) // 34
type(of: b) // Optional<Int>.Type