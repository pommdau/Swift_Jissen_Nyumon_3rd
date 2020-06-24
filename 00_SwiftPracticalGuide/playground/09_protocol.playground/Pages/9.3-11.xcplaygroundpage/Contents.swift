protocol SomeProtocol {
    associatedtype AssociatedType = Int
}

// AssociatedTypeを定義しなくてもSomeProtocolに準拠できる
struct SomeStruct : SomeProtocol {
    // SomeStruct.AssociatedTypeはIntとなる
}