protocol SomeProtocol {
    var title: String { get set }
}

// 変数のストアドプロパティ
struct SomeStruct1 : SomeProtocol {
    var title: String
}

// コンピューテッドプロパティ
struct SomeStruct2 : SomeProtocol {
    var title: String {
        get {
            return "title"
        }
        set {}
    }
}

// 定数のストアドプロパティ
// struct SomeStruct3 : SomeProtocol {
//     let title: Int // コンパイルエラー
// }