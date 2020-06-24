struct Article {
    var id: Int
    var title: String
    var body: String

    // 以下と同等のイニシャライザが自動的に定義される
    // init(id: Int, title: String, body: String) {
    //     self.id = id
    //     self.title = title
    //     self.body = body
    // }
}

let article = Article(id: 1, title: "Hello", body: "...")
article.id // 1
article.title // "Hello"
article.body // "..."