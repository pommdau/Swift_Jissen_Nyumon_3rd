struct Pair<Element> {
    let first: Element
    let second: Element
}

extension Pair : Equatable where Element : Equatable {
    static func ==(_ lhs: Pair, _ rhs: Pair) -> Bool {
        return lhs.first == rhs.first && lhs.second == rhs.second
    }
}

let stringPair1 = Pair(first: "abc", second: "def")
let stringPair2 = Pair(first: "def", second: "ghi")
let stringPair3 = Pair(first: "abc", second: "def")
stringPair1 == stringPair2 // false
stringPair1 == stringPair3 // true