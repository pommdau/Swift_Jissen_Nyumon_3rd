struct Article {
    let id: Int
    let title: String
    let body: String

    init(id: Int, title: String, body: String) {
        self.id = id
        self.title = title
        self.body = body
    }

    func printBody() {
        print(body)
    }
}

let article = Article(id: 1, title: "title", body: "body")
article.printBody()
