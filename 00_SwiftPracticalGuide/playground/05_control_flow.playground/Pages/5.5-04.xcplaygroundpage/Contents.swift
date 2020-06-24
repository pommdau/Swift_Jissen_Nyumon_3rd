enum Hemisphere {
    case northern
    case southern
}

let hemisphere = Hemisphere.northern

switch hemisphere {
case .northern:
    print("match: .northern")

case .southern:
    print("match: .southern")
}
