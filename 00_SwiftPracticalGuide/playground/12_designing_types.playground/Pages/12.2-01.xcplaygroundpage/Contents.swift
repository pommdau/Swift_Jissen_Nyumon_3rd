class Animal {
    var owner: String?
    func sleep() { print("Sleeping") }
    func move() {}
}

class Dog : Animal {
    override func move() {
        print("Running")
    }
}

class Cat : Animal {
    override func move() {
        print("Prancing")
    }
}

class WildEagle : Animal {
    override func move() {
        print("Flying")
    }
}