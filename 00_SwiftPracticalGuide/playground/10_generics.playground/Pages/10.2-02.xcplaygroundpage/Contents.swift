// Contentは型引数
struct Container<Content> {
    let content: Content
}

// 型引数がStringであることを明示する
let stringContainer = Container<String>(content: "abc") // Content<String>

// 型引数を型推論する
let intContainer = Container(content: 1) // Content<Int>