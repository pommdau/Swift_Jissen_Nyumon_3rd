var nextValue = Optional(1)
while case let value? = nextValue {
    print("value: \(value)")

    if value >= 3 {
        nextValue = nil
    } else {
        nextValue = value + 1
    }
}
