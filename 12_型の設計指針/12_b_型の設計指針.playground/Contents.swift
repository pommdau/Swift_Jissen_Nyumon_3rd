import Cocoa


// MARK: - 12.2 クラスの継承に対するプロトコルの有用性

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
    func move() {
        print("Running")
    }
}

struct Cat : Animal, Ownable {
    var owner: String
    func move() {
        print("Prancing")  // prance: はね回る
    }
}

struct WildEagle : Animal {
    func move() {
        print("flying")
    }
}


// クラスの継承を利用するべきとき

class Animal_02 {
    var owner: String? {
        didSet {
            guard let owner = owner else { return }
            print("\(owner) was assigned as the Owner")
        }
    }
}

class Dog_02 : Animal_02 {}
class Cat_02 : Animal_02 {}
class WildAnimal_02 : Animal_02 {}

let dog_02 = Dog_02()
dog_02.owner = "Yusei Nishiyama"  // Yusei Nishiyama was assigned as the Owner
