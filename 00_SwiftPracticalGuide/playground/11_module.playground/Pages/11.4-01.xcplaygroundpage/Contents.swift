struct SomeStruct {
    private var a: Int
    private var b: Int
}

extension SomeStruct : Equatable {
    static func ==(_ lhs: SomeStruct, _ rhs: SomeStruct) -> Bool {
        return lhs.a == rhs.a && lhs.b == rhs.b
    }
}