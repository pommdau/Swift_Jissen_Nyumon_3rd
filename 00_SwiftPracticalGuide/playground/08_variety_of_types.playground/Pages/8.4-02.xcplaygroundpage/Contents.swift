class SomeClass {
    let id: Int
    let name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }

    func printName() {
        print(name)
    }
}

let instance = SomeClass(id: 1, name: "name")
instance.printName()
