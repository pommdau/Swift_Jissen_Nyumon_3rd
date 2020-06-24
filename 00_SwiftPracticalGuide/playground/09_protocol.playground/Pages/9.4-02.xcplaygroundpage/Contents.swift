protocol Item {
    var name: String { get }
    var caution: String? { get }
}

extension Item {
    var caution: String? {
        return nil
    }

    var description: String {
        var description = "商品名: \(name)"
        if let caution = caution {
            description += "、 注意事項: \(caution)"
        }
        return description
    }
}

struct Book : Item {
    let name: String
}

struct Fish : Item {
    let name: String

    var caution: String? {
        return "クール便での配送となります"
    }
}

let book = Book(name: "Swift実践入門")
print(book.description)

let fish = Fish(name: "秋刀魚")
print(fish.description)
