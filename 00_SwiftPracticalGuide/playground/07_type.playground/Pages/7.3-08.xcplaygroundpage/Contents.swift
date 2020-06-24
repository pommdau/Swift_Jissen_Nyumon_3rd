struct SomeStruct {
    var value = 1
    lazy var lazyValue = double(of: value)

    func double(of value: Int) -> Int {
        return value * 2
    }
}