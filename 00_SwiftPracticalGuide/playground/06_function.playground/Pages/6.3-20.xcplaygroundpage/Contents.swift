func or(_ lhs: Bool, _ rhs: @autoclosure () -> Bool) -> Bool {
    if lhs {
        print("true")
        return true
    } else {
        let rhs = rhs()
        print(rhs)
        return rhs
    }
}

func lhs() -> Bool {
    print("lhs()関数が実行されました")
    return true
}

func rhs() -> Bool {
    print("rhs()関数が実行されました")
    return false
}

or(lhs(), rhs())
