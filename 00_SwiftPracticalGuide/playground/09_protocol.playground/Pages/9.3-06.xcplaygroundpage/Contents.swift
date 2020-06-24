protocol SomeProtocol {
    associatedtype AssociatedType

    // 連想型はプロパティやメソッドでも使用可能
    var value: AssociatedType { get }
    func someMethod(value: AssociatedType) -> AssociatedType
}

// AssociatedTypeを定義することで要求を満たす
struct SomeStruct1 : SomeProtocol {
    typealias AssociatedType = Int

    var value: AssociatedType
    func someMethod(value: AssociatedType) -> AssociatedType {
        return 1
    }
}

// 実装からAssociatedTypeが自動的に決定する
struct SomeStruct2 : SomeProtocol {
    var value: Int
    func someMethod(value: Int) -> Int {
        return 1
    }
}

// ネスト型AssociatedTypeを定義することで要求を満たす
struct SomeStruct3 : SomeProtocol {
    struct AssociatedType {}

    var value: AssociatedType
    func someMethod(value: AssociatedType) -> AssociatedType {
        return AssociatedType()
    }
}