import Cocoa

// MARK: - 9.1 型のインターフェースを定義する目的

func printIfEqual<T: Equatable>(_ arg1: T, _ arg2: T) {
    if arg1 == arg2 {
        print("Both are \(arg1)")
    }
}

printIfEqual(123, 123)
printIfEqual("str", "str")

// 利用方法
protocol SomeProtocol {
    var variable: Int { get }
}

func someMethod(x: SomeProtocol) {
    print("🍏\(x.variable)")
}

class MyItem: SomeProtocol {
    var variable: Int {
        return 10
    }
}

let myItem = MyItem()
someMethod(x: myItem)  // 🍏10


// 連想型
protocol SomeProtocol_02 {
    associatedtype AssociatedType
    
    var value: AssociatedType { get }
    func someMethod(value: AssociatedType) -> AssociatedType
}

struct SomeStruct_02: SomeProtocol_02 {
//    typealias AssociatedType = Int
//
//    var value: AssociatedType
//    func someMethod(value: AssociatedType) -> AssociatedType {
//        return 1
//    }
    
    var value: Int
    func someMethod(value: Int) -> Int {
        return 1
    }
}

protocol RandomValueGenerator {
    associatedtype Value
    func randomValue() -> Value
}

struct IntegerRandomValueGenerator : RandomValueGenerator {
    func randomValue() -> Int {
        return Int.random(in: Int.min...Int.max)
    }
}

struct StringRandomValueGenerator : RandomValueGenerator {
    func randomValue() -> String {
        let letters = "abcdefghijlmnopqrstuvwxyz"
        let offset = Int.random(in: 0..<letters.count)
        let index = letters.index(letters.startIndex, offsetBy: offset)
        return String(letters[index])
    }
}

StringRandomValueGenerator().randomValue()  // "b"

// 型制約の追加
class SomeClass {}

protocol SomeProtocol_03 {
    associatedtype AssociatedType: SomeClass
}

class SomeSubclass : SomeClass {}

struct ConformedStruct : SomeProtocol_03 {
    typealias AssociatedType = SomeSubclass
//    typealias AssociatedType = Int  // Compile Error
}

// +where節
protocol Container {
    associatedtype Content
}

protocol SomeData {
    associatedtype ValueContainer: Container where ValueContainer.Content: Equatable
}
