protocol SomeProtocol {
    mutating func someMutatingMethod()
    func someMethod()
}

// 構造体
struct SomeStruct : SomeProtocol {
    var number: Int

    mutating func someMutatingMethod() -> Void {
        // SomeStructの値を変更する処理を入れることができる
        number = 1
    }

    func someMethod() {
        // SomeStructの値を変更する処理を入れることはできないため
        // コンパイルエラー
//         number = 1
    }
}

// クラス
class SomeClass : SomeProtocol {
    var number = 0

    // 参照型であるクラスではmutatingは不要
    func someMutatingMethod() -> Void {
        // SomeClassの値を変更する処理を入れることができる
        number = 1
    }

    func someMethod() {
        // SomeClassの値を変更する処理を入れることができる
        number = 1
    }
}