struct Container<Content> {
    var content: Content
}

let intContainer = Container<Int>(content: 1)
let stringContainer = Container<String>(content: "abc")

// 型引数とイニシャライザの引数の型が一致しないのでコンパイルエラー
// let container = Container<Int>(content: "abc")