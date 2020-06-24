struct Greeting {
    var to = "Yosuke Ishikawa"
    var body: String {
        get {
            return "Hello, \(to)!" // ストアドプロパティtoを利用可能
        }
    }
}

let greeting = Greeting()
greeting.body // Hello, Yosuke Ishikawa!