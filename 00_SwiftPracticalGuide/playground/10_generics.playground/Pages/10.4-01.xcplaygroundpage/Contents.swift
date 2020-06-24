// 構造体
struct GenericStruct<T> {
    var property: T
}

// クラス
class GenericClass<T> {
    func someFunction(x: T) {}
}

// 列挙型
enum GenericEnum<T> {
    case SomeCase(T)
}