protocol SomeProtocol1 {
    func someMethod1()
}

protocol SomeProtocol2 {
    func someMethod2()
}

struct SomeStruct {
    let someProperty: Int
}

extension SomeStruct : SomeProtocol1 {
    func someMethod1() {}
}

extension SomeStruct : SomeProtocol2 {
    func someMethod2() {}
}