struct User {
    let id: Int
    let name: String
}

enum DatabaseError : Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

var registeredUsers = [
    User(id: 1, name: "Yusei Nishiyama"),
    User(id: 2, name: "Yosuke Ishikawa"),
]

func register(user: User) throws {
    for registeredUser in registeredUsers {
        if registeredUser.id == user.id {
            throw DatabaseError.duplicatedEntry
        }
    }

    registeredUsers.append(user)
}

let user = User(id: 1, name: "Taro Yamada")

do {
    // register(user:)の呼び出しにはtryキーワードが必要
    try register(user: user)
} catch {
    print("Error: \(error)")
}
