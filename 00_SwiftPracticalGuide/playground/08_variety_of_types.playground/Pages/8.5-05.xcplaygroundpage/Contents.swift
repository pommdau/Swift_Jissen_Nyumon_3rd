enum Symbol : Character {
    case sharp = "#"
    case dollar = "$"
    case percent = "%"
}

let symbol = Symbol(rawValue: "#") // sharp
let character = symbol?.rawValue // "#"