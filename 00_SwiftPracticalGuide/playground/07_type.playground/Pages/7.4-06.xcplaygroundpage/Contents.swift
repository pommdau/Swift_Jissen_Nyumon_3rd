// 失敗可能イニシャライザの使用
struct Greeting1 {
    let to: String
    var body: String {
        return "Hello, \(to)!"
    }

    init?(dictionary: [String: String]) {
        guard let to = dictionary["to"] else {
            return nil
        }

        self.to = to
    }
}

// デフォルト値の用意
struct Greeting2 {
    let to: String
    var body: String {
        return "Hello, \(to)!"
    }

    init(dictionary: [String: String]) {
        to = dictionary["to"] ?? "Yosuke Ishikawa"
    }
}