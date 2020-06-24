func add(_ optionalA: Int?, _ optionalB: Int?) -> Int? {
    guard let a = optionalA else {
        print("第1引数に値が入っていません")
        return nil
    }

    guard let b = optionalB else {
        print("第2引数に値が入っていません")
        return nil
    }

    return a + b
}

add(Optional(1), Optional(2)) // 3