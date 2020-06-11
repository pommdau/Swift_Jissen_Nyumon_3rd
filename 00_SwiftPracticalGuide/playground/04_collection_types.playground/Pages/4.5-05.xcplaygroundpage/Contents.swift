let string = "abc"

// 2番目の文字を取得
let bIndex = string.index(string.startIndex, offsetBy: 1)
let b = string[bIndex] // "b"

// 最後の文字を取得
let cIndex = string.index(string.endIndex, offsetBy: -1)
let c = string[cIndex] // "c"