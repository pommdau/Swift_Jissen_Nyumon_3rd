struct Greeting {
    static var signature = "Sent from iPhone"

    static func setSignature(withDeviceName deviceName: String) {
        signature = "Sent from \(deviceName)"
    }

    var to = "Yosuke Ishikawa"
    var body: String {
        return "Hello, \(to)!\n\(Greeting.signature)"
    }
}

let greeting = Greeting()
print(greeting.body)
print("--")

Greeting.setSignature(withDeviceName: "Xperia")
print(greeting.body)
