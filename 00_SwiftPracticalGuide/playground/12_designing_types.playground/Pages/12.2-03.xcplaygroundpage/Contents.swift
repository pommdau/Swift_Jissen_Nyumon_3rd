class Animal {
    var owner: String? {
        didSet {
            guard let owner = owner else { return }
            print("\(owner) was assigned as the owner")
        }
    }
}

class Dog : Animal {}

class Cat : Animal {}

class WildEagle : Animal {}

let dog = Dog()
dog.owner = "Yusei Nishiyama"
