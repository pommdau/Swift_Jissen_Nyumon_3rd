let a: Any = 1

if let int = a as? Int {
    // intは使用可能
}

// intは使用不可能なためコンパイルエラー
// print(int)