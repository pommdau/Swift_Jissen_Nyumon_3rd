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
}