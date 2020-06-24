struct Container<Content> {
    var content: Content
}

let intContainer = Container(content: 1) // Container<Int>型
let stringContainer = Container(content: "abc") // Container<String>型