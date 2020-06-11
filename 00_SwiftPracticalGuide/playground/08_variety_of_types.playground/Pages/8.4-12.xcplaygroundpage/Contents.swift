class User {
    let id: Int

    init(id: Int) {
        self.id = id
    }

    func printProfile() {
        print("id: \(id)")
    }
}

class RegisteredUser : User {
    let name: String

    init(id: Int, name: String) {
        // 第1段階
        self.name = name
        super.init(id: id)

        // 第2段階
        self.printProfile()
    }
}