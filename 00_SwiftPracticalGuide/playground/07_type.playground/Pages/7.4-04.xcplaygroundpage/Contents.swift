struct Greeting {
    let to: String
    var body: String {
        return "Hello, \(to)!"
    }

    init(to: String) {
        self.to = to
    }
}