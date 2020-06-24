func or(_ lhs: Bool, _ rhs: Bool) -> Bool {
    if lhs {
        print("true")
        return true
    } else {
        print(rhs)
        return rhs
    }
}

or(true, false)
