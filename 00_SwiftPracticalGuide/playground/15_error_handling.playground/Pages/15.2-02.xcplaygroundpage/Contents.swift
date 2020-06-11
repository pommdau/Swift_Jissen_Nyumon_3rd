import Foundation

struct User {
    let id: Int
    let name: String
    let email: String

    init?(id: Int, name: String, email: String) {
        let components = email.components(separatedBy: "@")
        guard components.count == 2 else {
            return nil
        }

        self.id = id
        self.name = name
        self.email = email
    }
}

if let user = User(id: 0,
                   name: "Yosuke Ishikawa",
                   email: "ishikawa.example.com") {
    print("Username: \(user.name)")
} else {
    print("Error: Invalid data")
}
