class SomeClass {
    let id: Int

    init(id: Int) {
        self.id = id
    }
}

let object1 = SomeClass(id: 42)
let object2 = SomeClass(id: 43)

let closure = { [weak object1, unowned object2] () -> Void in
    print(type(of: object1))
    print(type(of: object2))
}

closure()
