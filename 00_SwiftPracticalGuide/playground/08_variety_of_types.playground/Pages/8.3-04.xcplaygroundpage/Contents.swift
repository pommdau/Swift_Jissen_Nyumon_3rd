struct SomeStruct {
    var id: Int

    init(id: Int) {
        self.id = id
    }

    mutating func someMethod() {
        id = 4
    }
}

var a = SomeStruct(id: 1)
a.someMethod()
a.id // 4