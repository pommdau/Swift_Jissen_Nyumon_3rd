struct SomeStruct {
    var variable = 123 // 再代入可能
    let constant = 456 // 再代入不可能
    static var staticVariable = 789 // 再代入可能。型自身に紐付く
    static let staticConstant = 890 // 再代入不可能。型自身に紐付く
}

let someStruct = SomeStruct()
someStruct.variable // 123
someStruct.constant // 456
SomeStruct.staticVariable // 789
SomeStruct.staticConstant // 890