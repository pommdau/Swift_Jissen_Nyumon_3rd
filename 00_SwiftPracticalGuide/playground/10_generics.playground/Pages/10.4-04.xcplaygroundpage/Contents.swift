struct Pair<Element> {
    let first: Element
    let second: Element
}

extension Pair where Element == String {
    func hasElement(containing character: Character) -> Bool {
        return first.contains(character) || second.contains(character)
    }
}

let stringPair = Pair(first: "abc", second: "def")
stringPair.hasElement(containing: "e") // true

let integerPair = Pair(first: 1, second: 2)
// integerPair.hasElement(containing: "e") // メソッドが存在しないためコンパイルエラー