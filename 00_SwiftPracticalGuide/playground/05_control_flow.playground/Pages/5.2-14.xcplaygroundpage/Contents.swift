func add(_ optionalA: Int?, _ optionalB: Int?) -> Int? {
    let a: Int
    if let unwrappedA = optionalA {
        a = unwrappedA
    } else {
        print("第1引数に値が入っていません")
        return nil
    }

    let b: Int
    if let unwrappedB = optionalB {
        b = unwrappedB
    } else {
        print("第2引数に値が入っていません")
        return nil
    }

    return a + b
}

add(Optional(1), Optional(2)) // 3