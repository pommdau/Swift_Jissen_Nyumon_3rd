let a: Optional<Int> // aはOptional<Int>型（nilを代入できる）
let b: Int // bはInt型（nilを代入できない）

a = nil // OK
// b = nil // コンパイルエラー