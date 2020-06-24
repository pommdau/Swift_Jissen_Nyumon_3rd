// コンパイル可能だがidとnameが必須であるという仕様を表現していない
struct User {
    let id: Int?
    let name: String?
    let mailAddress: String?

    init(json: [String : Any]) {
        id = json["id"] as? Int
        name = json["name"] as? String
        mailAddress = json["mailAddress"] as? String
    }
}

let json: [String : Any] = [
    "id": 123,
    "name": "Yusei Nishiyama"
]

let user = User(json: json)

// idとnameがnilでないことを確認する必要がある
if let id = user.id, let name = user.name {
    print("id: \(id), name: \(name)")
} else {
    print("Invalid JSON")
}
