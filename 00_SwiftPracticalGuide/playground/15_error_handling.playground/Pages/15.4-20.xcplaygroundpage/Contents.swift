import Foundation

enum DatabaseError : Error {
    case entryNotFound
    case duplicatedEntry
    case invalidEntry(reason: String)
}

struct User {
    let id: Int
    let name: String
    let email: String
}

func findUser(byID id: Int) throws -> User {
    let users = [
        User(id: 1,
             name: "Yusei Nishiyama",
             email: "nishiyama@example.com"),
        User(id: 2,
             name: "Yosuke Ishikawa",
             email: "ishikawa@example.com"),
    ]

    for user in users {
        if user.id == id {
            return user
        }
    }

    throw DatabaseError.entryNotFound
}

func localPart(fromEmail email: String) throws -> String {
    let components = email.components(separatedBy: "@")
    guard components.count == 2 else {
        throw DatabaseError.invalidEntry(
            reason: "Invalid email address")
    }

    return components[0]
}

let userID = 1

do {
    let user = try findUser(byID: userID)
    let localPartOfEmail = try localPart(fromEmail: user.email)
    print("Local part: \(localPartOfEmail)")
} catch {
    print("Error: \(error)")
}
