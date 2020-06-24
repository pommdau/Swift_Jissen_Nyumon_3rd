struct Greeting {
    func greet(user: String) -> Void {
        print("Hello, \(user)!")
    }
}

let greeting = Greeting()
greeting.greet(user: "Yusei Nishiyama")
