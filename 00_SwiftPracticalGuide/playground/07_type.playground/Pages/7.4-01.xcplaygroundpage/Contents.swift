struct Greeting {
    let to: String
    var body: String {
        return "Hello, \(to)!"
    }

    init(to: String) {
        self.to = to
    }
}

let greeting = Greeting(to: "Yosuke Ishikawa")
let body = greeting.body // Hello, Yosuke Ishikawa!