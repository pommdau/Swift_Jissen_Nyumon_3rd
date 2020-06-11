func search(byQuery query: String,
            sortKey: String = "id",
            ascending: Bool = false) -> [Int] {
    return [1, 2, 3]
}
// 必須でない引数には値を指定しなくとも呼び出すことができる
search(byQuery: "query") // [1, 2, 3]