class A {
    class var className: String {
        return "A"
    }

    static var baseClassName: String {
        return "A"
    }
}

class B : A {
    override class var className: String {
        return "B"
    }

    // スタティックプロパティはオーバーライドできないのでコンパイルエラー
//     override static var baseClassName: String {
//         return "A"
//     }
}

A.className // "A"
B.className // "B"

A.baseClassName // "A"
B.baseClassName