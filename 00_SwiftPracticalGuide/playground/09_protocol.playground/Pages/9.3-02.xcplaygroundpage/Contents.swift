protocol SomeProtocol {
    var id: Int { get }
}

// 変数のストアドプロパティ
struct SomeStruct1 : SomeProtocol {
    var id: Int
}

// 定数のストアドプロパティ
struct SomeStruct2 : SomeProtocol {
    let id: Int
}

// コンピューテッドプロパティ
struct SomeStruct3 : SomeProtocol {
    var id: Int {
        return 1
    }
}