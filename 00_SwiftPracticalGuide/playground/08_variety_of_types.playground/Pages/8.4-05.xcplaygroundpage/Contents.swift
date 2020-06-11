class SuperClass {
    func overridableMethod() {}

    final func finalMethod() {}
}

class SubClass : SuperClass {
    override func overridableMethod() {}

    // オーバーライド不可能なためコンパイルエラー
//     override func finalMethod() {}
}