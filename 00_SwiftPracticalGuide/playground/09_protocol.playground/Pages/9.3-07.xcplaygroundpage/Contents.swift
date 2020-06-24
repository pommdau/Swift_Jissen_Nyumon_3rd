class SomeClass {}

protocol SomeProtocol {
    associatedtype AssociatedType : SomeClass
}

class SomeSubclass : SomeClass {}

// SomeSubclassはSomeClassのサブクラスなのでAssociatedTypeの制約を満たす
struct ConformedStruct : SomeProtocol {
    typealias AssociatedType = SomeSubclass
}

// IntはSomeClassのサブクラスではないのでコンパイルエラー
// struct NonConformedStruct : SomeProtocol {
//     typealias AssociatedType = Int
// }