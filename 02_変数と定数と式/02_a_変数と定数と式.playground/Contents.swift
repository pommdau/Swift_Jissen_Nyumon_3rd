import Cocoa

let a = 123
type(of: a)  // Int.Type

// Closure

let original = [1, 2, 3]
let doubled = original.map({ value in value * 2 })
doubled  // [2, 4, 6]
