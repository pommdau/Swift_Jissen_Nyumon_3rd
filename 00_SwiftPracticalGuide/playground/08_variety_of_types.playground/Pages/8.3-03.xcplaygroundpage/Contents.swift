struct SomeStruct {
    var id: Int

    init(id: Int) {
        self.id = id
    }
}

var variable = SomeStruct(id: 1)
variable.id = 2 // OK

let constant = SomeStruct(id: 1)
// constant.id = 2 // コンパイルエラー