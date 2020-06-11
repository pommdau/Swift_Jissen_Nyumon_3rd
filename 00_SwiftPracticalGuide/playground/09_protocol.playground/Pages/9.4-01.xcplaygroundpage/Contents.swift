protocol Item {
    var name: String { get }
    var category: String { get }
}

extension Item {
    var description: String {
        return "商品名: \(name), カテゴリ: \(category)"
    }
}

struct Book : Item {
    let name: String

    var category: String {
        return "書籍"
    }
}

let book = Book(name: "Swift実践入門")
print(book.description)
