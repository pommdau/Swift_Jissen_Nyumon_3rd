let boolLeft = true
let boolRight = true
// boolLeft < boolRight // コンパイルエラー

let anyLeft = "abc" as Any
let anyRight = "def" as Any
// anyLeft < anyRight // コンパイルエラー

let optionalIntLeft = Optional(24)
let optionalIntRight = Optional(27)
// optionalIntLeft < optionalIntRight // コンパイルエラー