struct Greeting {
    static let signature = "Sent from iPhone"

    var to = "Yosuke Ishikawa"
    var body = "Hello!"
}

func print(greeting: Greeting) {
    print("to: \(greeting.to)")
    print("body: \(greeting.body)")
    print("signature: \(Greeting.signature)")
}

let greeting1 = Greeting()
var greeting2 = Greeting()
greeting2.to = "Yusei Nishiyama"
greeting2.body = "Hi!"

print(greeting: greeting1)
print("--")
print(greeting: greeting2)
