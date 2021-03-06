class Mail {
    let from: String
    let to: String
    let title: String

    // 指定イニシャライザ
    init(from: String, to: String, title: String) {
        self.from = from
        self.to = to
        self.title = title
    }

    // コンビニエンスイニシャライザ
    convenience init(from: String, to: String) {
        self.init(from: from, to: to, title: "Hello, \(from).")
    }
}