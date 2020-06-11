func or(_ lhs: Bool, _ rhs: @autoclosure () -> Bool) -> Bool {
    if lhs {
        return true
    } else {
        return rhs()
    }
}

or(true, false) // true