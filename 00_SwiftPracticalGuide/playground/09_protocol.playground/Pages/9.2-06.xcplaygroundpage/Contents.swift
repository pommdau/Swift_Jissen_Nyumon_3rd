protocol SomeProtocol1 {
    var variable1: Int { get }
}

protocol SomeProtocol2 {
    var variable2: Int { get }
}

struct SomeStruct: SomeProtocol1, SomeProtocol2 {
    var variable1: Int
    var variable2: Int
}

func someFunction(x: SomeProtocol1 & SomeProtocol2) {
    x.variable1 + x.variable2
}

let a = SomeStruct(variable1: 1, variable2: 2)
someFunction(x: a) // 3