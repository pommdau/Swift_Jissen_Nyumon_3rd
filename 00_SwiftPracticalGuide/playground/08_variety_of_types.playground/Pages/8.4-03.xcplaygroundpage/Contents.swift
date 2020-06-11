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

// Userを継承したクラス
class RegisteredUser : User {
    let name: String

    init(id: Int, name: String) {
        self.name = name
        super.init(id: id)
    }
}

let registeredUser = RegisteredUser(id: 1, name: "Yosuke Ishikawa")
let id = registeredUser.id
let message = registeredUser.message
registeredUser.printProfile()
