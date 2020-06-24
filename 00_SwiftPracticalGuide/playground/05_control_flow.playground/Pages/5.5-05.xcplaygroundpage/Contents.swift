enum Hemisphere {
    case northern
    case southern
}

let hemisphere = Optional(Hemisphere.northern)

switch hemisphere {
case .northern:
    print("match: .northern")

case .southern:
    print("match: .southern")

case nil:
    print("nil")
}
