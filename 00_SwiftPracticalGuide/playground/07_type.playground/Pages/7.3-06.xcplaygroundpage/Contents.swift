struct Greeting {
    var to = "Yosuke Ishikawa" {
        willSet {
            print("willSet: (to: \(self.to), newValue: \(newValue))")
        }

        didSet {
            print("didSet: (to: \(self.to))")
        }
    }
}

var greeting = Greeting()
greeting.to = "Yusei Nishiyama"
