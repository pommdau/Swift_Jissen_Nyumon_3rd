var closure: (String) -> Int

// 引数と戻り値の型を明示した場合
closure = { (string: String) -> Int in
    return string.count
}
closure("abc") // 3

// 引数と戻り値の型を省略した場合
closure = { string in
    return string.count * 2
}
closure("abc") // 6