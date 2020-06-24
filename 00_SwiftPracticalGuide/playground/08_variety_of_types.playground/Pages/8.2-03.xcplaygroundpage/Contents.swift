extension Int {
    mutating func increment() {
        self += 1
    }
}

var a = 1 // 1
a.increment() // 2（aに再代入が行われている）

let b = 1
// b.increment() // bに再代入できないためコンパイルエラー