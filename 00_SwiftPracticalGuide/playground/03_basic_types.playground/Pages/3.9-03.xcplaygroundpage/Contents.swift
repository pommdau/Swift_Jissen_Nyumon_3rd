let optionalStringLeft = Optional("abc")
let optionalStringRight = Optional("def")
optionalStringLeft == optionalStringRight // false
optionalStringLeft != optionalStringRight // true

let optionalAnyLeft = "abc" as Any
let optionalAnyRight = "def" as Any
// optionalAnyLeft == optionalAnyRight // コンパイルエラー
// optionalAnyLeft != optionalAnyRight // コンパイルエラー