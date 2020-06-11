struct SomeStruct {
    var id: Int

    init(id: Int) {
        self.id = id
    }

    func someMethod() {
//         id = 4 // mutatingが付いていないのでコンパイルエラー
    }
}