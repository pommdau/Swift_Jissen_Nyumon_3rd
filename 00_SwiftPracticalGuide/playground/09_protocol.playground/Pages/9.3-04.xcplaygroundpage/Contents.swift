protocol SomeProtocol {
    func someMethod() -> Void
    static func someStaticMethod() -> Void
}

struct SomeStruct : SomeProtocol {
    func someMethod() -> Void {
        // メソッドの実装
    }

    static func someStaticMethod() -> Void {
        // メソッドの実装
    }
}