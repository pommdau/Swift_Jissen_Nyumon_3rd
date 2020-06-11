class User {
    let id: Int

    var message: String {
        return "Hello."
    }

    init(id: Int) {
        self.id = id
    }

    func printProfile() {
        print("id: \(id)")
        print("message: \(message)")
    }
}

class RegisteredUser : User {
    let name: String

    override var message: String {
        return "Hello, my name is \(name)."
    }

    init(id: Int, name: String) {
        self.name = name
        super.init(id: id)
    }

    override func printProfile() {
        super.printProfile()
        print("name: \(name)")
    }
}

let user = User(id: 1)
user.printProfile()

print("--")

let registeredUser = RegisteredUser(id: 2, name: "Yusei Nishiyama")
registeredUser.printProfile()
