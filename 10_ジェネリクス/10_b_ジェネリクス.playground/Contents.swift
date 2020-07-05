import Cocoa


// MARK: - 10.4 ジェネリック型

// 特殊化方法
struct Container<Content> {
    var content: Content
}

// 型引数の指定
let intContainer = Container<Int>(content: 1)
let stringContainer = Container<String>(content: "abc")

// 型推論
let intContainer_02 = Container(content: 1)
let stringContainer_02 = Container(content: "abc")


// 型制約

struct Pair<Element> {
    let first: Element
    let second: Element
}

extension Pair where Element == String {
    func hasElement(containing character: Character) -> Bool {
        return first.contains(character) || second.contains(character)
    }
}

let stringPair = Pair(first: "abc", second: "cdef")
stringPair.hasElement(containing: "c")  // true

let integerPair = Pair(first: 1, second: 2)
//integerPair.hasElement... // compile Error


// プロトコルへの条件付き準拠

struct Pair_02<Element> {
    let first: Element
    let second: Element
}

extension Pair_02 : Equatable where Element : Equatable {
    static func ==(_ lhs: Pair_02, _ rhs: Pair_02) -> Bool {
        return lhs.first == rhs.first && lhs.second == rhs.second
    }
}

let stringPair1 = Pair_02(first: "abc", second: "def")
let stringPair2 = Pair_02(first: "abc", second: "def")
stringPair1 == stringPair2  // true
