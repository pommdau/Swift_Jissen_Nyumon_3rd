protocol SomeProtocol {
    var variable: Int { get }
}

func someMethod(x: SomeProtocol) {
    // 引数xのプロパティやメソッドのうち、
    // SomeProtocolで定義されているものが使用可能
    x.variable
}