struct User {
    // idとnameの値は仕様どおりに必須とする
    let id: Int
    let name: String
    let mailAddress: String?

    init?(json: [String : Any]) {
        guard let id = json["id"] as? Int,
              let name = json["name"] as? String else {
            // idやnameを初期化できなかった場合は
            // インスタンスの初期化が失敗する
            return nil
        }

        self.id = id
        self.name = name
        self.mailAddress = json["email"] as? String
    }
}

let json: [String : Any] = [
    "id": 123,
    "name": "Yusei Nishiyama"
]

if let user = User(json: json) {
    print("id: \(user.id), name: \(user.name)")
} else {
    // 不正なインスタンスは初期化の時点で検出される
    print("Invalid JSON")
}
