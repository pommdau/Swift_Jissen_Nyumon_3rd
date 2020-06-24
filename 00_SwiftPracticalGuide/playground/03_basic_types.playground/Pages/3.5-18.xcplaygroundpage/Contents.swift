let a = Optional(17)
let b = a.map({ value in String(value) }) // "17"
type(of: b) // Optional<String>.Type