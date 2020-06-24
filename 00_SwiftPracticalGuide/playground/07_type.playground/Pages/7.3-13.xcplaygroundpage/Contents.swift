struct Greeting {
    var to = "Yosuke Ishikawa"
    var body: String {
        return "Hello, \(to)!"
    }
}

let greeting = Greeting()
// greeting.body = "Hi!" // セッタが定義されていないためコンパイルエラー