enum Option : Int {
    case none
    case one
    case two
    case undefined = 999
}

Option.none.rawValue // 0
Option.one.rawValue // 1
Option.two.rawValue // 2
Option.undefined.rawValue // 999