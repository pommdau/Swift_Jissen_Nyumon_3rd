protocol Ownable {
    var owner: String { get set }
}

protocol Animal {
    func sleep()
    func move()
}

extension Animal {
    func sleep() { print("sleeping") }
}

struct Dog : Animal, Ownable {
    var owner: String
    func move() { print("Running") }
}

struct Cat : Animal, Ownable {
    var owner: String
    func move() { print("Prancing") }
}

struct WildEagle : Animal {
    func move() { print("Flying") }
}