struct Greeting {
    var to = "Yosuke Ishikawa"
    var body = "Hello!"
}

let greeting1 = Greeting()
var greeting2 = Greeting()
greeting2.to = "Yusei Nishiyama"

let to1 = greeting1.to // Yosuke Ishikawa
let to2 = greeting2.to // Yusei Nishiyama