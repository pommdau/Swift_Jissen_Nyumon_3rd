import Cocoa

// MARK: - 10.1 汎用的なプログラム

func isEqual<T: Equatable>(_ x: T, _ y: T) -> Bool {
    return x == y
}

isEqual("abc", "abc")
isEqual(1, 1)
isEqual(false, false)


// MARK: - 10.2 ジェネリクスの基本

// 特殊化方法
struct Container<Content> {
    let content: Content
}

let stringContainer = Container<String>(content: "abc")  // Container<String>
let intContainer = Container(content: 1)  // Container<Int>


// ジェネリック関数

func identity<T>(_ x: T) -> T {
    return x
}

identity(1)
identity("abc")


// 連想型のスーパークラスや準拠するプロトコルに対する制約

func sorted<T: Collection>(_ argument: T) -> [T.Element]
    where T.Element : Comparable {
        return argument.sorted()
}

sorted([3, 2, 1])   // [1, 2, 3]
[3, 2, 1].sorted()  // [1, 2, 3]

// 型どうしの一致を要求する制約

func concat<T: Collection, U: Collection>(_ argument1: T, _ argument2: U) -> [T.Element]
    where T.Element == U.Element {
        return Array(argument1) + Array(argument2)
}

let array = [1, 2, 3]
let set = Set([1, 2, 3])
let result = concat(array, set)  // [1, 2, 3, 1, 2, 3]
