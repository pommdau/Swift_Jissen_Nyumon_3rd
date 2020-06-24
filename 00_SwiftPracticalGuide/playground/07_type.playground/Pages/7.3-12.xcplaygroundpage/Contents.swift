struct Greeting {
    var to = "Yosuke Ishikawa"
    var body: String {
        return "Hello, \(to)!"
    }
}

let greeting = Greeting()
greeting.body // Hello, Yosuke Ishikawa!